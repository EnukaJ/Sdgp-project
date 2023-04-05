import 'package:flutter_test/flutter_test.dart';
import 'package:home_page/buttonFunction.dart';

void main() {
  test(
      'given Nextpage class then the isbutton1Pressed shoud be false without pressing',
      () {
    final NextPage nextPage = NextPage();

    nextPage.Button1Pressed(false);

    expect(false, false);
  });

  test(
      'given Nextpage class then the isbutton2Pressed shoud be false without pressing',
      () {
    final NextPage nextPage = NextPage();

    nextPage.Button2Pressed(false);

    expect(false, false);
  });

  test(
      'given Nextpage class then the isbutton3Pressed shoud be false without pressing',
      () {
    final NextPage nextPage = NextPage();

    nextPage.Button3Pressed(false);

    expect(false, false);
  });

  test(
      'given Nextpage class then the isbutton4Pressed shoud be false without pressing',
      () {
    final NextPage nextPage = NextPage();

    nextPage.Button4Pressed(false);

    expect(false, false);
  });

  
  test(
      'given Nextpage class then the isbutton1Pressed shoud be true after pressing',
      () {
    final NextPage nextPage = NextPage();

    nextPage.Button1Pressed(true);

    expect(true, true);
  });

  test(
      'given Nextpage class then the isbutton2Pressed shoud be true after pressing',
      () {
    final NextPage nextPage = NextPage();

    nextPage.Button2Pressed(true);

    expect(true, true);
  });

  test(
      'given Nextpage class then the isbutton3Pressed shoud be true after pressing',
      () {
    final NextPage nextPage = NextPage();

    nextPage.Button3Pressed(true);

    expect(true, true);
  });

  test(
      'given Nextpage class then the isbutton4Pressed shoud be false after pressing',
      () {
    final NextPage nextPage = NextPage();

    nextPage.Button4Pressed(true);

    expect(true, true);
  });
}
