import 'package:flame_forge2d/flame_forge2d.dart';

class BodyComponentWithUserData extends BodyComponent {
  BodyComponentWithUserData({
    super.bodyDef,
    super.fixtureDefs,
    super.children,
    super.renderBody,
  });

  @override
  Body createBody() {
    final body = world.createBody(super.bodyDef!)..userData = this;
    fixtureDefs?.forEach(body.createFixture);
    return body;
  }
}
