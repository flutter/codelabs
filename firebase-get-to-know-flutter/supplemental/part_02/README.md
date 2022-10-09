# Supplemental Material - Firestore TTL

## Starter Code
You can download the starter code by going to the parent directory and visiting part_01. The directory that you are currently in has completed TTL code added to it. The only thing you would need to do in order to test this code would be to call `flutterfire configure` to configure the project for your application.

## What is a TTL policy for firestore?
A TTL policy for firestore allows a document to contain some information about when that document should expire and be removed from the database. With a TTL policy, the database will automatically remove that document and you will not need to worry about coming in to manually remove documents or creating a firebase cloud function to remove the documents for you. For more information on configuring a TTL policy, see [this documentation](https://firebase.google.com/docs/firestore/ttl).

## Code

In order to create a TTL policy, we need a field that tells the policy when it should remove the document. If you have existing documents without a TTL field, those will not be removed when the TTL policy is run. It is important to have robust security rules to account for the lack of a TTL field and to make sure that no one can extend the TTL date from what was approved within your application. The changes here are to add a TTL field with a one minute expiration so we can see it expire within two days of us adding this to verify that it is working. Then we need to make sure our security rules account for the TTL policy being added.

In the addMessageToGuestBook method, we merely want to add a ttl field to the document.

```dart
Future<DocumentReference> addMessageToGuestBook(String message) {
  if (!_loggedIn) {
    throw Exception('Must be logged in');
  }

return FirebaseFirestore.instance
    .collection('guestbook')
    .add(<String, dynamic>{
    'text': message,
    'timestamp': FieldValue.serverTimestamp(),
    'name': FirebaseAuth.instance.currentUser!.displayName,
    'userId': FirebaseAuth.instance.currentUser!.uid,
    // add from here
    /**
      DISCLAIMER:
      This is for testing only. In practice, you would want
      to use a fixed date such as:
      'expireAt': DateTime.parse('2022-10-31'),
    **/
    'expireAt': DateTime.now().add(const Duration(minutes: 1)), 
    // to here
  });
}
```

Then we would want to modify our security rules as follows:

```
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /attendees/{entry} {
    	allow read: if true;
      allow write:
      	if request.auth.uid == request.resource.id;
    }
    match /guestbook/{entry} {
      allow read: if request.auth.uid != null;
      allow write:
      if request.auth.uid == request.resource.data.userId
          && "name" in request.resource.data
          && "text" in request.resource.data
          && "timestamp" in request.resource.data
          && "expireAt" in request.resource.data;
          // Use the following below as a best practice
          //&& request.resource.data.expireAt.date() == timestamp.date(2022,10,31);
    }
  }
}
```

Right now, we are just validating that the request has the required fields for data to enter into the collection. For production databases, you would want to plan a ttl date when the data is set to expire or you would want to plan a set amount of time for that data to live. i.e., thirty days from creation time. Small time windows like we use in the example are not going to be deleted immediately when the ttl time is hit, instead, Firestore calculates the least impactful time to remove the documents from the database and then removes them.