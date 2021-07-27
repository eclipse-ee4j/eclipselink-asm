[33mcommit 1530977a177f5f8b0e85d9052bce3c1a7c76a5fb[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon Apr 26 11:32:08 2021 +0200

    make eclipselink asm standalone project (#1054)
    
    and let eclipselink depend on it as a library
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 25ad452502f5edb9249fd34ff70d8ba451b0d8c4[m
Author: Radek Felcman <radek.felcman@oracle.com>
Date:   Thu Apr 8 12:50:44 2021 +0200

    Maven build - version change to 3.1.0-SNAPSHOT (#1057)
    
    Signed-off-by: Radek Felcman <radek.felcman@oracle.com>

[33mcommit f6782e0b4d8c4c7ffa29b6c32b3ce50771ca0d39[m
Author: EclipseLink Bot <eclipselink-bot@eclipse.org>
Date:   Mon Dec 7 10:58:16 2020 +0000

    Update ECLIPSELINK version of org.eclipse.persistence:org.eclipse.persistence.parent to 3.0.1-SNAPSHOT
    
    Signed-off-by: EclipseLink Bot <eclipselink-bot@eclipse.org>

[33mcommit 47e5f8555839eca1d7d989029b99e9bb616a6d42[m
Author: EclipseLink Bot <eclipselink-bot@eclipse.org>
Date:   Mon Dec 7 10:45:59 2020 +0000

    Update ECLIPSELINK version of org.eclipse.persistence:org.eclipse.persistence.parent to 3.0.0-RC2
    
    Signed-off-by: EclipseLink Bot <eclipselink-bot@eclipse.org>

[33mcommit 355543f3b64d9e3e26dbcbbeedca3f4c237a71d0[m
Author: EclipseLink Bot <eclipselink-bot@eclipse.org>
Date:   Fri Nov 13 13:25:38 2020 +0000

    Update ECLIPSELINK version of org.eclipse.persistence:org.eclipse.persistence.parent to 3.0.1-SNAPSHOT
    
    Signed-off-by: EclipseLink Bot <eclipselink-bot@eclipse.org>

[33mcommit 8a0cd9aec518451a164128ec4c497aa0bc777f18[m
Author: EclipseLink Bot <eclipselink-bot@eclipse.org>
Date:   Fri Nov 13 13:16:17 2020 +0000

    Update ECLIPSELINK version of org.eclipse.persistence:org.eclipse.persistence.parent to 3.0.0-RC1
    
    Signed-off-by: EclipseLink Bot <eclipselink-bot@eclipse.org>

[33mcommit b4e97e23c4cc0956a22df1838fbf876521648d9b[m[33m ([m[1;33mtag: 3.0.0-M1[m[33m)[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Thu Apr 23 16:26:15 2020 +0200

    fix broken html files, minor updates to spec names
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 3dad60040428a8f64bb5f9ded03b422dff9210aa[m
Author: Radek Felcman <radek.felcman@oracle.com>
Date:   Mon Apr 20 19:33:56 2020 +0200

    [master] EclipseLink release pipeline and script. (#765)
    
    EclipseLink release pipeline and script.
    Due a limitations of nexus-staging-maven-plugin there is some change in project POMs.
    
    Signed-off-by: Radek Felcman <radek.felcman@oracle.com>

[33mcommit 9bc318e82fb64063a1326eb767a3016fb4b24165[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Fri Apr 17 21:31:11 2020 +0200

    clean up dependency tree
    tweak osgi imports
    fix oracle build
    move coverage to extra profile
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit b6b829838ace14f45130124465f7792b213fa107[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Fri Apr 17 02:21:47 2020 +0200

    #761: remove deprecated ANTLR based parser
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 2b5ac4d27ea897dd8da57079dc441e886fb21a6b[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Sun Apr 12 14:16:36 2020 +0200

    fix copyright headers (#752)
    
    * set up copyright plugin
    * make sure no tabs get it
    * make copyright headers up-to-date
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 0af17277b1a544ff8fa1ced08ebb543f9c07c0ed[m
Author: Radek Felcman <radek.felcman@oracle.com>
Date:   Wed Nov 27 12:05:17 2019 +0100

    [master] Dependencies and Maven plugins upgrade (#605)
    
    [master] Dependencies and Maven plugins upgrade
    
    In some cases this upgrade leads into some pom.xml or Java sources change:
    
    1. mongodb driver from 3.2.0 to 3.11.1
        There is different error message in case of wrong authentication
    2. maven-bundle-plugin from 4.1.0 to 4.2.1
        From >=4.2.0 includes into "Import-Package" packages from "Class.forName(...)" as mandatory regardless if maven dependency is specified or not.
    3. SLF4J update from 1.7.25 to 2.0.0-alpha1
        Without this update tests in org.eclipse.persistence.extension will fail
    
    Signed-off-by: Radek Felcman radek.felcman@oracle.com

[33mcommit ec0c44ce467d8892938995be20693aa72d825350[m
Author: Radek Felcman <radek.felcman@oracle.com>
Date:   Tue Oct 15 14:07:46 2019 +0200

    Mavenize EclipseLink - Maven module directories rename e.g. jpa/eclipselink.jpa.test.maven -> jpa/eclipselink.jpa.test, Travis config change

[33mcommit 3a530cdf5b9b0f0d784f199118e478d53b4138a4[m
Author: Radek Felcman <radek.felcman@oracle.com>
Date:   Tue Oct 15 13:47:36 2019 +0200

    Mavenize EclipseLink - source and resource files movement, old files moved into eclipseLink.backup directory

[33mcommit fcd5e3b03129d7c49fab10610ee4a11a468bb96d[m
Author: Radek Felcman <radek.felcman@oracle.com>
Date:   Mon Oct 14 16:28:37 2019 +0200

    Mavenize EclipseLink - POM files and tranformation scripts

[33mcommit 69c9bafe72ed432f26b3763e415d7ea19b387683[m
Author: Joe Grassel <fyrewyld@gmail.com>
Date:   Mon Sep 23 13:43:13 2019 -0500

    Part 2 of ASM 7.1 update (update .classpath and antbuild files with version and generated date) and generated asm jar binary.
    
    Signed-off-by: Joe Grassel <fyrewyld@gmail.com>

[33mcommit 9f68fabbfe1a321755731c6493c38b6cd17e819f[m
Author: Joe Grassel <fyrewyld@gmail.com>
Date:   Mon Sep 23 13:30:27 2019 -0500

    Update Eclipselink bundled ASM to version 7.1 for JDK 13 support.
    
    Signed-off-by: Joe Grassel <fyrewyld@gmail.com>

[33mcommit 951739661acc92952f122795bcb786c0100ff06f[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Thu Feb 28 13:40:32 2019 +0100

    fix versions in readme and about  files (#376)
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 808593f69a2067093180172ecafe2e3620627ac0[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Wed Jan 2 18:08:51 2019 +0100

    Remove orbit repository from the build, minor fixes in dependencies
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit aff99d4715f85cb3af26d4bc1e1c9087cb5a1eb1[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Tue Dec 18 12:56:48 2018 +0100

    contribute new oracle bundles for org.eclipse.persistence.oracle.nosql
    
    org.eclipse.persistence.oracle.nosql_3.0.0.v20181218-8eae3d26d5.jar org.eclipse.persistence.oracle.nosql.source_3.0.0.v20181218-8eae3d26d5.jar
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 09b6fd672b272cf254b0551915514f8107db990f[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Tue Dec 18 12:56:47 2018 +0100

    contribute new oracle bundles for org.eclipse.persistence.oracle
    
    org.eclipse.persistence.oracle_3.0.0.v20181218-da4e177b69.jar org.eclipse.persistence.oracle.source_3.0.0.v20181218-da4e177b69.jar
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 666738584d821c8e2c877dda2c55010a3c65997f[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Tue Dec 18 08:27:13 2018 +0100

    strip version numbers from api artifacts, integrate jaxrs 2.1.4 (#323)
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 4bd923add426b83e2c6efb5b867eab685d3b0fa6[m
Author: rfelcman <37173451+rfelcman@users.noreply.github.com>
Date:   Sun Dec 2 22:29:49 2018 +0100

     [nobug] Mavenize compilation dependencies (#290)
    
    First implementation automatically generated compilation dependencies from
     Maven dependencies.
    Maven dependency priorities by filter in target-platform-configuration plugin.
    Maven/Tycho options change. Additional TEST_TARGET=build-distribution.
    
    Signed-off-by: Radek Felcman <radek.felcman@oracle.com>

[33mcommit 38dd15c5f60684a99e4463d771a8f6d7b13dc371[m
Author: rfelcman <37173451+rfelcman@users.noreply.github.com>
Date:   Tue Nov 27 00:07:06 2018 +0100

    Update asm to version 7.0 (#287)
    
    Signed-off-by: Radek Felcman <radek.felcman@oracle.com>

[33mcommit 52aaaa46cf5d54b4a7af9ca9764430a14de38f02[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Tue Oct 30 17:05:38 2018 +0100

    Bug 535820: corba dependencies for JDK11 (CQ# 17026, 17027, 17028, 17036, 17037, 17042) (#272)
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 05c713841c750485ffc5d53171e0ab95e37f9cb5[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon Aug 6 09:08:54 2018 +0200

    [nobug]: bump imported asm version
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 7d471c10a25974bc379ac019ce829923e1f0731f[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Sat Aug 4 15:14:50 2018 +0200

    [nobug] rebuild asm bundle to pick up fix for bug 534001
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 1bafdf39126d70a655d95c58dbc1ee001b9e16ab[m
Author: Cousjava <jonathan.coustick@payara.fish>
Date:   Sat Aug 4 13:15:37 2018 +0100

    [master] Bug 537360: Update asm to version 6.2 (#192)
    
    * Updates asm to version 6.2 (CQ #17020)
    
    Signed-off-by: Jonathan Coustick <jonathan.coustick@payara.fish>

[33mcommit 6e12a3b4f81ffa4a14da87e2b1348ba35e10ce29[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Fri Aug 3 18:11:17 2018 +0200

    contribute new oracle bundles for org.eclipse.persistence.oracle.nosql
    
    org.eclipse.persistence.oracle.nosql_3.0.0.v20180803-b87d11af08.jar org.eclipse.persistence.oracle.nosql.source_3.0.0.v20180803-b87d11af08.jar
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 782d13fade5f81717c5326ffba2b90d0726a1529[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Fri Aug 3 18:11:16 2018 +0200

    contribute new oracle bundles for org.eclipse.persistence.oracle
    
    org.eclipse.persistence.oracle_3.0.0.v20180803-e5d861d713.jar org.eclipse.persistence.oracle.source_3.0.0.v20180803-e5d861d713.jar
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 09c54e030a6f7b98b1837a4d47920274235ca6e0[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Fri Aug 3 17:41:13 2018 +0200

    [nobug] Bump JPA version used by build and tests to 2.1 (#199)
    
    * obsolete versions on JPA binaries are removed from the repo (1.0, 2.0)
    * build scripts are updated to use 2.2 API by default
    * eclipselink.jpa.test tests are now running against 2.1 and 2.2 API only
    * eclipselink.jpa.test/antbuild.xml has been mostly rewritten
    * fixed proxyauth tests on oracle in Java SE env; server side tests are still failing
    * fixed failures in eclipselink.jpa.test.jse
    * fixed classloading bug in JGeometryConverter
    * fixed few more test failures related to Oracle DB in tests
    * https://bugs.eclipse.org/bugs/show_bug.cgi?id=525457 (removal of javax.persistence package from eclipselink.jar)
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 13dbf0614adeb9958b5539e64b1f8aec35507d4f[m
Author: Will Dazey <dazeydev.3@gmail.com>
Date:   Tue Jul 24 09:08:38 2018 -0500

    Bug 534001: Update bundle MANIFESTS for OSGI 4.3 deprecation of RequiredExecutionEnvironment (#187)
    
    Signed-off-by: Will Dazey <dazeydev.3@gmail.com>
    Reviewed-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 27ffbcb3ffa2f58beba4f1d3a27812dfe5969fde[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon Jul 2 00:10:03 2018 +0200

    Bug 536067: Update license to EPL 2.0 (#140)
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit bdc99c6d766115fd44a06192caea5b8cbf43978e[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Thu Jun 14 18:44:49 2018 +0200

    contribute new oracle bundles for org.eclipse.persistence.oracle (#134)
    
    org.eclipse.persistence.oracle_3.0.0.v20180614-7a6f67340a.jar org.eclipse.persistence.oracle.source_3.0.0.v20180614-7a6f67340a.jar
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 3b379b909d4a4288820ec4cacf7fc0e6b577d7c9[m
Merge: b498001d99 b97ca2fe0e
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Tue Jun 12 13:23:19 2018 +0200

    Merge branch 'master' into Upgrade_JSONP_1.1.2

[33mcommit b97ca2fe0e3ce069495171a76f655e46b468edd5[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Thu May 24 20:59:22 2018 +0200

    contribute new oracle bundles for org.eclipse.persistence.oracle.nosql
    
    org.eclipse.persistence.oracle.nosql_3.0.0.v20180524-156525ff54.jar org.eclipse.persistence.oracle.nosql.source_3.0.0.v20180524-156525ff54.jar
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 344efd7081c29315243cf9f8a805c19d49a2bbec[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Thu May 24 20:59:21 2018 +0200

    contribute new oracle bundles for org.eclipse.persistence.oracle
    
    org.eclipse.persistence.oracle_3.0.0.v20180524-156525ff54.jar org.eclipse.persistence.oracle.source_3.0.0.v20180524-156525ff54.jar
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit b498001d99c7b0381342c87487d4c58f56c9944d[m
Author: Radek Felcman <radek.felcman@oracle.com>
Date:   Wed May 16 13:41:41 2018 +0200

    Update JSON-P to 1.1.2 version and separate dependencies to API and implementation
    
    Include JSON-P 1.1.2 binaries (API, implementation), update about.html and uploadToNexus.xml files.
    
    Signed-off-by: Radek Felcman <radek.felcman@oracle.com>

[33mcommit b432a48667e223b074cef11d2d952703968c0868[m
Author: Radek Felcman <radek.felcman@oracle.com>
Date:   Tue May 15 16:16:14 2018 +0200

    Update JSON-P to 1.1.2 version and separate dependencies to API and implementation
    
    Update buildsystem and compdeps (Eclipse features).
    
    Signed-off-by: Radek Felcman <radek.felcman@oracle.com>

[33mcommit 6047abbcb6ac3bc4eef01a3ac58b2fbcb80e472c[m
Author: Radek Felcman <radek.felcman@oracle.com>
Date:   Thu May 10 10:07:54 2018 +0200

    Update JSON-P to 1.1.2 version and separate dependencies to API and implementation
    
    Ant build files update. JSON API and RI libraries load.
    
    Signed-off-by: Radek Felcman <radek.felcman@oracle.com>

[33mcommit 9b12786ecbf423f410298f80ac64a4f25e0817a4[m
Author: Radek Felcman <radek.felcman@oracle.com>
Date:   Wed May 9 16:32:41 2018 +0200

    Update JSON-P to 1.1.2 version and separate dependencies to API and implementation
    
    Initial step. Ant build files update. JSON API and RI libraries load.
    
    Signed-off-by: Radek Felcman <radek.felcman@oracle.com>

[33mcommit d569bff7c5c976dcb85071f9c1c961988b97c35e[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Thu Apr 5 12:31:12 2018 +0200

    Bug 532882: Update ASM to 6.1.1 (#49) - rebuild bundles (#54)
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit f59571137ee46192b93e26dff05aa751abd162f9[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Thu Apr 5 12:10:43 2018 +0200

    Bug 532882: Update ASM to 6.1.1 (#49)
    
    * update asm to 6.1.1 (CQ #16026)
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 63f947bc292a0b76e882cefa67bac5650224e2d0[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Thu Mar 29 11:57:49 2018 +0200

    [master] Bug 532870: Uptake JTA 1.3 (#38)
    
    * add javax.interceptor dependency (CQ #15996)
    * add javax.transaction (CQ #15995)
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 118674a1b8659801b7a85db7c05a154619db1011[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Fri Jan 5 15:23:25 2018 +0100

    Bug 529454: Update javax.validation api to 2.0.1 Final - binary
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>
    Reviewed-by: TomasK

[33mcommit 23fa51975c5abd3feab506b253c00aa6ae3b185b[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Wed Nov 1 17:35:26 2017 +0100

    Added Automatic-Module-Name to MANIFEST Put automatic timestamp to built jar names by build script
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 198f8d32d338c6401c2a1dacf7a8fb0c7ea7ba10[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Thu Oct 5 22:39:52 2017 +0200

    Bug 525526: uptake ASM 6.0 final
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>
    Reviewed-by: TomasK

[33mcommit b8dc487205de91d623a2d5a052f7a1d1de650d2a[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Thu Oct 5 22:00:56 2017 +0200

    Bug 525526: upgrade to ASM 6.0 final (CQ: 14395) - binaries
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>
    Reviewed-by: TomasK

[33mcommit 9f5747dc801a8732b0db9ab03ee9a5ad6d637ed6[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Thu Oct 5 21:55:49 2017 +0200

    Bug 525526: upgrade to ASM 6.0 final (CQ: 14395)
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>
    Reviewed-by: TomasK

[33mcommit 3ae7198a6992faf21511d67406e2918dbaca84e6[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Fri Aug 11 13:10:39 2017 +0200

    updated oracle bundle
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 1f86e92a11b29368941aef5b894eb82de9440d0a[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Fri Jun 30 20:21:58 2017 +0200

    update oracle bundles
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 20e181bf2d0a027341d1ecef6a14fb2643a1d84e[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon Jun 12 17:32:31 2017 +0200

    Update javax.persistence to 2.2-dev
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 03b52105ba7998178c5ac02d129f9e9008233790[m
Author: Jan Supol <jan.supol@oracle.com>
Date:   Wed Feb 1 16:30:46 2017 +0100

    Bug #513574: Entity not recognized on JDK9
    
    Signed-off-by: Jan Supol <jan.supol@oracle.com>
    Reviewed-by: Lukas

[33mcommit 90691e6d1f21c895057a0fe287d0b44a8f37e504[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Tue Nov 22 12:17:15 2016 +0100

    contribute new oracle bundles for org.eclipse.persistence.oracle
    
    org.eclipse.persistence.oracle_2.7.0.v20161122-807dca8.jar org.eclipse.persistence.oracle.source_2.7.0.v20161122-807dca8.jar
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 8819b6bf765776c118f2387eafa5b58dc744e747[m
Author: David Kral <david.k.kral@oracle.com>
Date:   Thu Jun 30 09:38:19 2016 +0200

    Bug 493817 - Upgrade to ASM 5.1.0
    Signed-off-by: David Kral <david.k.kral@oracle.com>
    Reviewed-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit c81742e8bfbf4870eb9da7ec8f7983d5228cd2fb[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Fri May 20 11:53:40 2016 +0200

    contribute new oracle bundles for org.eclipse.persistence.oracle.nosql
    
    org.eclipse.persistence.oracle.nosql_2.7.0.v20160520-9d93b0e.jar org.eclipse.persistence.oracle.nosql.source_2.7.0.v20160520-9d93b0e.jar
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit d6548c78e4cd7832ae94d7a2d91194798dde4404[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Fri May 20 11:53:39 2016 +0200

    contribute new oracle bundles for org.eclipse.persistence.oracle
    
    org.eclipse.persistence.oracle_2.7.0.v20160520-fd23ffd.jar org.eclipse.persistence.oracle.source_2.7.0.v20160520-fd23ffd.jar
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 9a9038627d6cabfed33f62e1391bc29983a24019[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Tue May 17 13:43:19 2016 +0200

    Bug 493793: Update ANTLR implementation to 3.5.2 - binaries
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>
    Reviewed-by: Tomas

[33mcommit 19649840a57457a2571617bade4f22867a8f8fa9[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Tue May 17 13:35:08 2016 +0200

    Bug 493793: Update ANTLR implementation to 3.5.2 - sources
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>
    Reviewed-by: Tomas

[33mcommit e9afaa52347fb8474e46d43a4716408292211f49[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Thu May 12 19:51:18 2016 +0200

    Bug 493557: remove the use of Oracle classes from oracle.sql package - binary update
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 1dcffadd6507f9caa81ed4b753361e03e07f0bcc[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon May 9 13:49:00 2016 +0200

    [nobug] antlr project def update
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 7a9fe842e21f2ebd906c608fa4878df0c60b8fde[m
Author: Tomas Kraus <tomas.kraus@oracle.com>
Date:   Thu Mar 17 11:14:13 2016 +0100

    Bug 489756 - Updated org.eclipse.persistence.oracle library to proper git hash.
    Signed-off-by: Tomas Kraus <tomas.kraus@oracle.com>
    Reviewed-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 2fdf15c4ae15a8551d8178c15611e1da6c296792[m
Author: Tomas Kraus <tomas.kraus@oracle.com>
Date:   Wed Mar 16 16:24:15 2016 +0100

    Bug 489756 - Oracle DB schema name not properly passed to table extension code in TableCreator
               - Updated org.eclipse.persistence.oracle library will be in next commit
    Signed-off-by: Tomas Kraus <tomas.kraus@oracle.com>
    Reviewed-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 0e52c518e4eb66a58c94111b9a9988d5543257a1[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon Mar 7 23:54:09 2016 +0100

    nobug: javadoc fixes
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit c8a771644ac48acca75ee68f49a85b62e9331b9b[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Fri Mar 4 14:22:02 2016 +0100

    nobug: javadoc errors in oracle extensions
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit e5f78f6cf29012c7b5da9ee94129cc70e72345ef[m
Author: Andriy Zhdanov <andriy.zhdanov@oracle.com>
Date:   Fri Nov 13 14:37:40 2015 +0100

    Bug 484061 - Eclipselink 2.5.2 incompatible with MongoDB Java Driver 3.2.0
    
    Signed-off-by: Andriy Zhdanov <andriy.zhdanov@oracle.com>
    Reviewed-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 317512e4e3523c27d69f11adce95b5567b662dac[m
Author: Tomas Kraus <tomas.kraus@oracle.com>
Date:   Thu Aug 13 16:04:27 2015 +0200

    Bug# 474903 - Add remote host support into MongoDB tests
    Signed-off-by: Tomas Kraus <tomas.kraus@oracle.com>
    Reviewed-by: Lukas Jungmann <lukas.jungmann@oracle.com>, Martin Grebac <martin.grebac@oracle.com>

[33mcommit c2cb980ad0000f76d9efe9ff677dce7a0bf1d9ec[m
Author: Tomas Kraus <tomas.kraus@oracle.com>
Date:   Thu Jul 30 12:51:49 2015 +0200

    Bug# 296391 - SLF4JLogger with jUnit tests.
                  CQs 9981, 9982 and 9983 for 3rd party libraries are approved.
    Signed-off-by: Tomas Kraus <tomas.kraus@oracle.com>
    Reviewed-by: Lukas Jungmann <lukas.jungmann@oracle.com>, Martin Grebac <martin.grebac@oracle.com>

[33mcommit 2cc7f44df3fbdfa24c1188e073cbe95ec26ae942[m
Author: Dmitry Kornilov <dmitry.kornilov@oracle.com>
Date:   Sat May 30 21:59:38 2015 +0200

    Bug #272508 - Upgrade to Jersey 2.x and JAX-RS 2.x
    
    Signed-off-by: Dmitry Kornilov <dmitry.kornilov@oracle.com>
    Reviewed-by: Lukas Jungmann

[33mcommit 01616c67d71b18a239f349912c9b636c1f9e5b4a[m
Author: Dmitry Kornilov <dmitry.kornilov@oracle.com>
Date:   Wed Jun 10 17:01:23 2015 +0200

    Bug #472475 - BV made optional. OSGI tests added.
    
    Signed-off-by: Dmitry Kornilov <dmitry.kornilov@oracle.com>
    Reviewed-by: Lukas Jungmann, Martin Grebac

[33mcommit 500eab00be4157bedfed63bb68eedb8592441647[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon Jun 8 10:12:44 2015 +0200

    Bug 469691: explicit dependency on JAF and StAX should be removed
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>
    Reviewed-by: MartiNG, Bo

[33mcommit 805d33881da36937511529910411b2f273d1348a[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Sat Jun 6 12:18:37 2015 +0200

    Bug 469686: fix eclipselink update site
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>
    Reviewed-by: MartiNG, Bo

[33mcommit 21ee6e59621379c6a3392d28fdd918792adc0f64[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Wed May 20 16:54:40 2015 +0200

    Bug 348829: javax.persistence should be signed for OSGi consumers
    
    Bug 451610: FrameworkEvent ERROR
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>
    Reviewed-by: MartiNG, Bo

[33mcommit e3f69e00dd0ab9ffd2738b1c013475de1f9f5dc0[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon Apr 13 20:23:31 2015 +0200

    Bug 464795: switch the build to JDK 8
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit f114e2ce628d9cc74eebfb1c7aa03a38ad823cc2[m
Author: Petros Splinakis <petros.splinakis@oracle.com>
Date:   Mon Apr 13 12:42:38 2015 +0200

    Bug #464398 - Need to rebuild org.eclipse.persistence.oracle jar to include fix for Bug 463420
    
    Signed-off-by: Petros Splinakis <petros.splinakis@oracle.com>
    Reviewed-by: Tomas Kraus <tomas.kraus@oracle.com>

[33mcommit 18495ff17acc2a934b94f0d35b49f9da3c288cb8[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon Apr 13 18:33:18 2015 +0200

    no bug: eclipse project update
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 284dca57e1baefff212b69acbaf6448a0ae69fdc[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon Apr 13 13:30:16 2015 +0200

    no bug: remove references to svn from eclipse project definitions
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit dad74040517675a4c22ed13312f2500d8f63c2d1[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon Mar 30 18:06:18 2015 +0200

    Bug 463403: Normalize line endings - missed files, better set up for win
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 9c43cd1754565050cff5a93599b718ee37a8acf4[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Sat Mar 28 20:43:19 2015 +0100

    Bug 463403:
    Normalize line-endings to LF
    replace tabs, trim trailing whitespace
    batch update copyright year to 2015
    manual updates to what has been missed, fixed failing tests relying on tabs or spaces
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>
    Reviewed-by: MartiNG, TKraus

[33mcommit a8dafbb8696ef0e2a8c3b73c38508f2531af9e9d[m
Author: Petros Splinakis <petros.splinakis@oracle.com>
Date:   Fri Mar 6 20:55:41 2015 +0100

    Bug #460041 - org.eclipselink.persistence.oracle jar needs to be rebuilt
    
    Signed-off-by: Petros Splinakis <petros.splinakis@oracle.com>
    Reviewed-by: Martin Grebac <martin.grebac@oracle.com>

[33mcommit c13f52ca99687abe287e04dd26d00f0b2ca7b0d9[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon Oct 13 13:52:47 2014 +0200

    Bug 446943: switch the build to JDK 7; remove JDK 6 compliance

[33mcommit 1e115b0bdb6becb3a65cb5f592bc4ecb3d9818b6[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Fri Oct 10 15:09:53 2014 +0200

    Integrate JAXB API with javadoc fixes (CQ:8374)
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 131285abcecde6fc989f6a4f09d7556cc3ef6f9c[m
Author: Martin Vojtek <martin.vojtek@oracle.com>
Date:   Wed Oct 8 10:03:34 2014 +0200

    Bug #411379 - Replaced internal JSONParser with reference implementation.
    
    Removed part of CompositeCollectionWithGroupingElementIdentifiedByPosition test, becuase json structure should have unique keys.
    
    Updated javax.json-1.0 to javax.json-1.0.4.
    
    Signed-off-by: Martin Vojtek <martin.vojtek@oracle.com>

[33mcommit c1049916e8f186f9188666ab90e7dade275aa968[m
Author: Martin Vojtek <martin.vojtek@oracle.com>
Date:   Mon Aug 25 10:52:31 2014 -0700

    Bug #440471 - Fixed classpath and manifest errors when opening moxy projects in Eclipse.
    
    Added OSGI versions of jaxb-core and jaxb-xjc from JAXB RI projects.
    Instructions to open MOXy projects in eclipse:
    1. Import projects eclipselink.moxy.test, org.eclipse.persistence.core, org.eclipse.persistence.moxy, org.eclipse.persistence.moxy.dynamicxjc, org.eclipse.persistence.nosql
    2. Import plugin projects from plugins directory: javax.validation (1.1.0), jaxb-core (2.2.11) and jaxb-xjc (2.2.11)
    Removed tmp fix for OSGI manifests.
    Fixed .classpath for eclipse projects.
    
    Signed-off-by: Martin Vojtek <martin.vojtek@oracle.com>

[33mcommit d94390db9a1adb67e0a7f32f37ab78fdf84acbc5[m
Author: Marcel Valovy <marcel.valovy@oracle.com>
Date:   Thu Jul 31 12:27:25 2014 +1000

    Moved extension libraries used for BV tests from Project structure to external folder.
    
    Signed-off-by: Marcel Valovy <marcel.valovy@oracle.com>

[33mcommit 94a7922af737874edbe4ef2bc49fb7df2f7fc78c[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Thu Aug 7 18:14:38 2014 +0200

    fix unmappable character

[33mcommit d9098b241f49b4526fb8ce7bd69bd78ca0fc0abc[m
Author: Martin Grebac <martin.grebac@oracle.com>
Date:   Tue Aug 5 16:21:38 2014 +0200

    Bug 441142: Upgrade tycho version - fixes duplicate repository imports within builds, sync on Java SE 6 as execution environment.
    
    Signed-off-by: Martin Grebac <martin.grebac@oracle.com>

[33mcommit d1a23f5fab83be26cccc0ccca8f9e5ddcf4a6bdf[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon Aug 4 23:21:05 2014 +0200

    bump EJB version to 3.1.0 and remove version 3.0
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 9dc618ff465cc83369702ebc3898a54fd6e0bc5a[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Mon Aug 4 20:05:03 2014 +0200

    remove duplicated binaries
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 687dfef4fc999c18550a67180e2475d13a10d93c[m
Author: Marcel Valovy <marcel.valovy@oracle.com>
Date:   Mon Jul 14 14:14:32 2014 +0200

    Fixed generation of JavaDoc for jaxb-api.
    Signed-off-by: Marcel Valovy <marcel.valovy@oracle.com>

[33mcommit 1afb4f5a5fbc5bef80ae075293fedf212e66c0a8[m
Author: Marcel Valovy <marcel.valovy@oracle.com>
Date:   Fri Jul 11 15:19:11 2014 +0200

    Bug #431803: Fix of OS specific bug - added placeholders in order to commit two empty dirs.
    Git doesn't commit empty directories. When the two directories is missing, it will cause
    failures on non-UNIX environments.
    Signed-off-by: Marcel Valovy <marcel.valovy@oracle.com>

[33mcommit 7506b90e7501f97d4fb3e9d9b2cdb6a76351bc66[m
Author: Marcel Valovy <marcel.valovy@oracle.com>
Date:   Wed Jul 9 21:18:04 2014 +0200

    Bug #431803: MOXy support for Bean Validation (JSR-303/349)
    WARNING: This commit breaks remote build. Use
      ant -f antbuild.xml -Dlocal.compdeps=true -Declipse.install.dir=/path/to/eclipse build
    to build EclipseLink locally.
    Signed-off-by: Marcel Valovy <marcel.valovy@oracle.com>

[33mcommit b52315f62da83a444d1671a0e17d7b3df4cef7fa[m
Author: mvalovy <marcel.valovy@oracle.com>
Date:   Wed Jul 2 19:03:25 2014 +0200

    Bug #438761: Update javax.validation to 1.1.0.Final
    
    Signed-off-by: mvalovy <marcel.valovy@oracle.com>

[33mcommit c94a152c2a0047fe2f4140c616768188a07ff6ab[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Fri May 2 23:18:35 2014 +0200

    Bug 434952 - update eclipse project definitions
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>
    Reviewed by: Tom Ware, Tomas Kraus

[33mcommit a87eb4c6e3a3dd76be7e63c2d2408ec395027c7f[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Thu May 8 17:04:47 2014 -0400

    Update fixed asm_5.0.1 bundles, include updated about and read me

[33mcommit 378692c2fc7db319b89c2507598951b1a2e36e1d[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Fri May 2 10:31:23 2014 -0400

    update ASM version in "about" files. fix upper limits in some asm test criteria ranges

[33mcommit 1a8dfd1f35ad21a4997503e9768277f8619c2e04[m
Author: tware <tom.ware@oracle.com>
Date:   Fri May 2 09:03:02 2014 -0400

    Manifest & jar updates updates for new asm version

[33mcommit aadbcb8cdf67890774cd265da34ad4eb539f86ff[m
Author: Lukas Jungmann <lukas.jungmann@oracle.com>
Date:   Sat Apr 19 23:53:43 2014 +0200

    Bug#429992: EclipseLink silently ignores Entity classes with lambda expressions (ASM library update to 5.0.1 to support JavaSE 8 language features in entites)
    
    Signed-off-by: Lukas Jungmann <lukas.jungmann@oracle.com>

[33mcommit 4f27d3cdb36c14c8c8984ef26013bd4b62985d54[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Thu May 1 21:46:20 2014 -0400

    Update asm jars

[33mcommit 53cb2f08f124730f5f803fc8d71a4febf15e9463[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Wed Jun 19 10:24:35 2013 -0400

    Add JSON-P dependency to Core and Moxy

[33mcommit 387af1d6e8c257402b792bca122a13b8d72fdef3[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Jun 18 10:53:05 2013 -0400

    contribute new oracle bundles

[33mcommit c8ffe56da3ead065d8d4629389f9fd2e83638745[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Jun 11 14:59:47 2013 -0400

    Update javax.resource dependency to 1.6.0 (Orbit jar)

[33mcommit c3e0c353a88cf74869da10d124e47406daf75aec[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Wed Apr 3 11:35:46 2013 -0400

    commit new oracle bundle build/contribution

[33mcommit 438f45fe1b0dc2d01d924f913c19fcc4bc6fb187[m[33m ([m[1;33mtag: 2.5.0-M9[m[33m, [m[1;33mtag: 2.5.0-M10[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Wed Mar 6 05:25:31 2013 -0500

    update oracle bundle contribution

[33mcommit 003b40848ee2267b61982f7c22f4c9920bc7902c[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Thu Feb 28 12:08:16 2013 -0500

    Fix header typo once and for all. Update script copyright messages.

[33mcommit 18a841a6fcffb639bdaa94e5141bb19e98ec76c8[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Feb 19 13:15:15 2013 -0500

    385413: cleanup asm and antlr projects: fix antbuild.xml, remove old BND deps and other dross

[33mcommit d348eb76c2b0e3cf6af6a9f1c8a6d767b03d6060[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Wed Feb 6 11:14:46 2013 -0500

    Add new versions of Oracle bundles

[33mcommit 0ea13507f1fed3e11858d1067e6b492894038f79[m
Author: tware <tom.ware@oracle.com>
Date:   Mon Jan 7 11:53:05 2013 -0500

    CQ6951

[33mcommit 401dd8c98ad2dd8997abf8af9793b6954973e6f8[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Mon Dec 10 18:36:28 2012 -0500

    update to new oracle plugin

[33mcommit 2c88872f55a43cfcce840532ca1164c44e47e45b[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Wed Dec 5 16:43:23 2012 -0500

    update oracle bundles

[33mcommit 1aa41ee7c5b90f3689d16e53a98478fede02d336[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Dec 4 18:55:48 2012 -0500

    remove jpa/plugins/javax.persistence, and update build to only use bundles.

[33mcommit 133e569247f374108f2c38b5c23525df27fc148c[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Mon Nov 19 17:44:50 2012 -0500

    Replace oracle bundle after build including recent transaction(s)

[33mcommit d1aa424be62972fb57ddd18d46625bf9fcb0f72d[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Fri Nov 2 10:36:59 2012 -0400

    Manual commit of new oracle bundles

[33mcommit 196753599d432dabc9a9e0bd076a0323a4351e13[m[33m ([m[1;33mtag: 2.5.0-M1[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Thu Jun 28 18:40:59 2012 +0000

    Merge 2.4.0 build changes (release prep) to 2.5.0

[33mcommit a1997b45295d8ec727008bbf64a5395588f19bc8[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Sat Jun 2 18:33:20 2012 +0000

    Sync 2.4.0 build fixes
    update activation and xml.bind
    revert hermes to 1.5 jvm target

[33mcommit dfecfb5c50c1ce4dd1b88795fa9ff6927392e55a[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Wed May 23 18:52:44 2012 +0000

    Initial transaction to update version to 2.5.0

[33mcommit 0bd0e93553adf4ee043dda95ba65fa0184b04f97[m[33m ([m[1;33mtag: 2.4.0-M21[m[33m, [m[1;33mtag: 2.4.0-M20[m[33m, [m[1;33mtag: 2.4.0-M19.1[m[33m, [m[1;33mtag: 2.4.0-M19[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Thu May 3 18:03:11 2012 +0000

    377681: somewhat unrelated to 1.6, but the problem was exposed by the switch:
     - add "encoding="UTF-8" parameters to all compiler calls
    
    It seems the default if unspecified was ASCII, which periodically caused problems.

[33mcommit 82addc03069bbe73d077a4bae819bae526ecb716[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Thu May 3 02:48:06 2012 +0000

    377681: change the javac.version setting to 1.6 in ant files.

[33mcommit d0527fc3135542df0bb40a59fffcdfd811f1aac2[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Thu Apr 19 19:10:17 2012 +0000

    Jersey Core - CQ 6403

[33mcommit 7263d2fa685786ec9a7ec60afa4613c714256588[m[33m ([m[1;33mtag: 2.4.0-M18[m[33m)[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Tue Apr 17 19:56:10 2012 +0000

    add missed files from last commit

[33mcommit 38494b7284a1c9b544272b79e964bc94bc988eb2[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Tue Apr 17 19:05:59 2012 +0000

    javax.ejb 3.1.0 CQ 6429

[33mcommit f97beb8f4ccbc3e7d6b211aa32aa8af6050afb22[m[33m ([m[1;33mtag: 2.4.0-M17.2[m[33m, [m[1;33mtag: 2.4.0-M17.1[m[33m, [m[1;33mtag: 2.4.0-M17[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Apr 3 02:17:42 2012 +0000

    fix for QA: dbws fails in glassfish
    - remove require-bundle for javax.servlet in dbws manifest
    - update to Tycho 0.14.1
    - correct mismatched OSGi bundles (jarname vs manifest)
    - update properties files to match new filenames
    - fix required-execution-env to 1.6 for moxy classes in core and moxy

[33mcommit a4a0a281115a61527ebb59e9165b318a160c4e45[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Wed Mar 21 16:46:33 2012 +0000

    update nosql to use checkin of Orbit driver for Mongo.

[33mcommit af485e9b80a3daf5c06e0994f348189517725b54[m[33m ([m[1;33mtag: 2.4.0-M9[m[33m, [m[1;33mtag: 2.4.0-M16[m[33m, [m[1;33mtag: 2.4.0-M15[m[33m, [m[1;33mtag: 2.4.0-M14[m[33m, [m[1;33mtag: 2.4.0-M13[m[33m, [m[1;33mtag: 2.4.0-M12[m[33m, [m[1;33mtag: 2.4.0-M11[m[33m, [m[1;33mtag: 2.4.0-M10[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Fri Dec 9 19:46:49 2011 +0000

    Add javax.ws.rs (CQ 4436)

[33mcommit 665b5b032e526320a62d5d20fa83ca49bbd23eef[m[33m ([m[1;33mtag: 2.4.0-M8[m[33m, [m[1;33mtag: 2.4.0-M7[m[33m, [m[1;33mtag: 2.4.0-M6[m[33m, [m[1;33mtag: 2.4.0-M5[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Wed Oct 19 00:50:29 2011 +0000

    change to unsigned

[33mcommit 69f55b6162c1c0e247f515f66b41cebf3e80b677[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Oct 18 13:42:58 2011 +0000

    add signed, semi-static jars for test and packaging

[33mcommit b413e3ced1d3a4d41b862f499b0dd681d51e55c9[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Thu Oct 13 00:44:01 2011 +0000

    Partial Tycho updates: 4 of 4+:
    - infrastructure changes:
     - renumber asm/antlr
     - update Manifest files for manual editing and Tycho build
    
    Other parts include:
    
    - infrastructure changes:
      - change how we build asm/antlr
      - reorganize global resource files
    - renaming workbench buildfiles
    - adding PDE version of Workbench build.properties.

[33mcommit ddc6258ba335b1513c5be2303f0912a0da6db8b8[m[33m ([m[1;33mtag: 2.4.0-M4[m[33m, [m[1;33mtag: 2.4.0-M3[m[33m, [m[1;33mtag: 2.4.0-M2[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Fri Jul 15 19:10:00 2011 +0000

    Updates (minor) to POMs. Mostly to resolve jar content differences.

[33mcommit f11955e5bf350ff8dbb89087bf6dd742732f7160[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Thu Jul 14 18:34:51 2011 +0000

    Partial Tycho updates: 3 of 4+:
    - adding pom.xml files for tychp/maven (not wired in because other updates and infrastructure changes required).
    
    Other parts include:
    - infrastructure changes:
     - renumber and change how we build asm/antlr
     - reorganize global resource files
    - renaming workbench buildfiles
    - adding PDE version of Workbench build.properties.

[33mcommit 237ef4a231d1867ec353aa4dc53eea5b21ca6185[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Jul 5 21:10:50 2011 +0000

    260428 - buildfile rename fix. precurser to Tycho updates. part 1 of 4:
    move runtime build.* to antbuild.*
    
    Other parts include:
    - adding back a PDE version of build.xml for runtime.
    - renaming workbench buildfiles
    - adding PDE version of Workbench build.properties.

[33mcommit 32727bba9189f4aa0189b1474a65b56f12fcb2d5[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Wed Jun 29 18:26:37 2011 +0000

    Update Manifest files for PDE projects with new version info

[33mcommit 20f164cd9738370d3a113ecbf6b549ad91f1d9ec[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Mon Jun 6 14:59:04 2011 +0000

    update version to 2.4.0

[33mcommit 85be2c64b78b337e8ed78933a6c87d243b288da0[m[33m ([m[1;33mtag: 2.3.0-RC4[m[33m, [m[1;33mtag: 2.3.0-RC3[m[33m, [m[1;33mtag: 2.3.0-RC2[m[33m, [m[1;33mtag: 2.3.0-RC1[m[33m, [m[1;33mtag: 2.3.0[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Sat May 7 00:42:56 2011 +0000

    update bnd and build.xml to include licensing htmls and xsd file into built jar.

[33mcommit 4726f679d3d3561eef2a574aa84ae7f735405f10[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Sat May 7 00:41:33 2011 +0000

    update with 3.3.1 classes built on build.eclipse.org

[33mcommit 57c06f8adccb880cbbe86c7677b67ab32e6dca06[m[33m ([m[1;33mtag: 2.3.0-M7[m[33m)[m
Author: Doug Clarke <douglas.clarke@oracle.com>
Date:   Wed Apr 27 19:24:22 2011 +0000

    Bug 343702: Upgrade to ASM 3.3.1 (CQ 5108)
    - updated asm bundle
    - fixes to all ASM processing and class writing
    - reviewed by Blaise, Tom, James (pending)

[33mcommit 569d8531ef035f1e10f2fbb46f3e7c9925feb0c9[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Apr 19 18:37:44 2011 +0000

    minor clean-up, and additions to allow easy recompiles of static classes for new JDKs (target is explicit and not default)

[33mcommit 55d6ec31078b4eaa1c7ba5a973a37a6e7a1aec25[m[33m ([m[1;33mtag: 2.3.0-M6[m[33m, [m[1;33mtag: 2.3.0-M5[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Dec 21 17:40:08 2010 +0000

    Update version to 2.3

[33mcommit 5b3941cd99e818c0288ed3f493c3001eb4c032ad[m[33m ([m[1;33mtag: 2.2.0-RC4[m[33m, [m[1;33mtag: 2.2.0-RC3[m[33m, [m[1;33mtag: 2.2.0-RC2[m[33m, [m[1;33mtag: 2.2.0-RC1[m[33m, [m[1;33mtag: 2.2.0-M6[m[33m, [m[1;33mtag: 2.2.0[m[33m)[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Wed Nov 24 19:32:17 2010 +0000

    Updated PDE manifests to version 2.2.0

[33mcommit 2ad962232e18d7acd85ef04369591a47bb633888[m[33m ([m[1;33mtag: 2.2.0-M5[m[33m, [m[1;33mtag: 2.2.0-M4[m[33m)[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Tue Oct 12 18:49:17 2010 +0000

    update to bnd file

[33mcommit 2238ad9e01f3d6bfff12779b7c482512e29ce94f[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Fri Oct 8 15:08:18 2010 +0000

    Bug 327348 - Update ANTLR implementation to 3.2

[33mcommit a0729f7fe5bd5f2773fa181de58ac4664520e315[m[33m ([m[1;33mtag: 2.2.0-M3[m[33m, [m[1;33mtag: 2.2.0-M2[m[33m, [m[1;33mtag: 2.2.0-M1[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Jul 6 15:12:19 2010 +0000

    Fixes to CleanRevision.

[33mcommit c3d156ae06df4368bc42c66ac1334a57912add9d[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Mon Jun 14 20:45:17 2010 +0000

    316720 - fix to .bnd files in asm and antlr to include about.html, readme.html, and license.html files.

[33mcommit c076d18321140f5cabd0ce2072c3220944c6db73[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Jun 8 18:36:11 2010 +0000

    Update version info.

[33mcommit 6a80d878f9a4ddd5c0eaa7c356ce474b0ca96f58[m[33m ([m[1;33mtag: 2.1.0-RC4.1[m[33m, [m[1;33mtag: 2.1.0-RC4[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Mon Jun 7 21:09:47 2010 +0000

    Update to approved Orbit release of javax.mail, javax.xml.bind, and javax.xml.stream.

[33mcommit beacac4f73889651db5f009a60f600b66c8f5dc0[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Mon Jun 7 20:28:31 2010 +0000

    Update to approved Orbit release of javax.activation.

[33mcommit e96f16f5e9ddde9faa891c48b1c8b4a6656de4d6[m
Author: Mike Norman <mike.norman@oracle.com>
Date:   Tue Jun 1 15:00:32 2010 +0000

    revert (portion of) fix for bug https://bugs.eclipse.org/bugs/show_bug.cgi?id=314539
    - revert to previous version of jar
    - fix later in Orbit??

[33mcommit e1788e4dcda598dda1926faee54d1114f3eb77e6[m
Author: Mike Norman <mike.norman@oracle.com>
Date:   Mon May 31 20:54:08 2010 +0000

    fix for bug https://bugs.eclipse.org/bugs/show_bug.cgi?id=314539 -  javax.xml.bind requires system.bundle
    - add single line to manifests

[33mcommit 1247bfb57c559a8df7cd3fba7d2a87c114543199[m[33m ([m[1;33mtag: 2.1.0-RC3[m[33m, [m[1;33mtag: 2.1.0-RC1[m[33m)[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Fri May 14 17:43:20 2010 +0000

    Bug 312947 - Allow EclipseLink JPA to work with Gemini in OSGi

[33mcommit 4a21d760c8537d9e0f7e466fdf2aadedf1e90fa2[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue May 11 21:26:25 2010 +0000

    312104 - Modify build to require bnd. If not found other options are presented.

[33mcommit 3a6e6db93b9eb8696add444b50b80f82a27caf16[m
Author: Blaise Doughan <blaise.doughan@oracle.com>
Date:   Fri Apr 23 19:59:16 2010 +0000

    Fix for Bug 310334 - Remove JAXB 2.1.12 Jars

[33mcommit e5d9cd41adc0ba4ecdffd119b54b57ffb04a97ab[m
Author: Blaise Doughan <blaise.doughan@oracle.com>
Date:   Tue Apr 20 18:26:36 2010 +0000

    Fix for Bug 309848 - Add JAXB 2.2 libraries

[33mcommit c4485e9b91886ba3e2a1a077e418034278567a99[m[33m ([m[1;33mtag: 2.1.0-M6[m[33m)[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Mon Feb 8 16:36:09 2010 +0000

    Bugs 298949-300302-299389 - updates to dependencies

[33mcommit f5cb51680da78ffab1d9c50fa00ad15ebe8e610c[m[33m ([m[1;33mtag: 2.1.0-M5[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Sat Jan 16 13:43:44 2010 +0000

    297217 - rework to adopt new standards. Aslo some copyright updates.

[33mcommit 8315080e519f6ca2e868d5e7a83c15f8b9384673[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Wed Jan 13 16:09:45 2010 +0000

    Trivial update - remove empty .svn folder

[33mcommit d7c510b77dc0d691bc4a86168f0baa084062828e[m[33m ([m[1;33mtag: 2.1.0-M1[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Wed Dec 16 14:46:01 2009 +0000

    297954: commit patch (fix manifest and then build)

[33mcommit ec515ed4173ac3cb9def964c2fc9e4881c8d8677[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Fri Nov 27 23:38:56 2009 +0000

    Initial transaction to update new trunk version (2.1.0)

[33mcommit 1284bb142b76a061106c9d5a90278d326e3a0090[m[33m ([m[1;33mtag: 2.0.0-RC1[m[33m, [m[1;33mtag: 2.0.0-M16[m[33m, [m[1;33mtag: 2.0.0-M15[m[33m, [m[1;33mtag: 2.0.0-M14[m[33m, [m[1;33mtag: 2.0.0-M13[m[33m, [m[1;33mtag: 2.0.0-M12[m[33m, [m[1;33mtag: 2.0.0-M11[m[33m, [m[1;33mtag: 2.0.0[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Thu Oct 22 14:52:38 2009 +0000

    Minor cleanup. Remove unused properties. (property use changed with restructuring, but never removed)

[33mcommit 71017b4bfc723afd6e1bab70c93a0d25d8001bfe[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Wed Oct 21 20:09:21 2009 +0000

    Bug 291364 - fix PDE project manifests to coorespond with generated manifests from build

[33mcommit 7be6f9bfe5f6861c04b00e52cdc2912bd1a49893[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Wed Oct 21 16:15:35 2009 +0000

    Fix wrong version number in build. Must have crept in with a merge up of 1.2 fixes.

[33mcommit 81d0a907223e2d1400531aeccfec61f522ed20d1[m[33m ([m[1;33mtag: 2.0.0-M9[m[33m, [m[1;33mtag: 2.0.0-M10[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Oct 6 13:38:31 2009 +0000

    291471: add necessary changes to update the version of bnd looked for by default to 366.
      - Update antlr, asm, and sdo to latest standard (seem to have been missed somehow)
      - bring over fixes to generated archives

[33mcommit 5514a62444b69333fa82bd1541c722cd434ef656[m[33m ([m[1;33mtag: 2.0.0-M8[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Sep 15 13:32:04 2009 +0000

    Fixes:
      -problems with clean targets (fix typos, and omittions resulting in persistent files)
      -fix OSGi bundle generation issues (new modelgen jar shouldn't be included)
      -added modelgen jar to installer.zip

[33mcommit d99579918716159456a02a53ab16350da75b4570[m[33m ([m[1;33mtag: 2.0.0-M7[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Thu Aug 20 18:16:55 2009 +0000

    286971: moved the jaxb source and product jar to /trunk/plugin and updated the buildfiles affected by the move.
     - also added the commonj.sdo.source_2.1.1.v200905221342.zip to correctly parse 2.1.1 instead of 2.1.0 for javadoc
     - removed all commonj.sdo_2.1.0 source an jars

[33mcommit 4dee89f8bc0ce1911b8cc743455e6f9680e1d4f9[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Fri Aug 7 15:00:57 2009 +0000

    265763 partial: updated template files to default to generating all imports (add * at the end of the explicit rules list). That way all imports will be generated, and they will be required which may flag an issue. It is possible that all general imports should be ;resolution=optional, but I'm uncertain, so for now will use this default.

[33mcommit 4f7fa36b1f6ee30ee76b8a321ad0f2b88fe61c70[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Fri Aug 7 14:03:20 2009 +0000

    265763 partial: Changed to variable definitions for bnd.jar, and added an override in the root build.

[33mcommit 6599f958df16ac524827978b788fbd9d27766a1d[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Thu Aug 6 18:43:38 2009 +0000

    265763 partial: Commit intermediate work to use bnd on ANTLR and ASM bundles (still optional)

[33mcommit 970ee269c504cc9ec914e37ccd80c1ecd8426776[m[33m ([m[1;33mtag: 2.0.0-M6[m[33m, [m[1;33mtag: 2.0.0-M5[m[33m, [m[1;33mtag: 2.0.0-M4[m[33m)[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Wed Jun 17 18:51:15 2009 +0000

    Update manifests for eclipse projects to parallel ones generated in build

[33mcommit 954494c7103298c0c4c710e10b601dbaa487381b[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Thu Jun 4 18:47:45 2009 +0000

    merge build fixes from 1.1.2 -> trunk (no p2 or signing processes yet)
    Also added QA requested "clean" fix:
     split clean into clean-runtime and clean-testing
     added clean that calls clean-runtime and clean-testing

[33mcommit c7ea854dee35d9e411aff497410da2f8b9db40b3[m[33m ([m[1;33mtag: 2.0.0-M3[m[33m)[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Mon Jun 1 14:16:22 2009 +0000

    Update version numbers in manifests to 4-point version numbers

[33mcommit 59fe660a676f44fb09ddefb39189d7ce02234c74[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Fri May 29 19:48:06 2009 +0000

    Add Bundle Provider to Manifest

[33mcommit fcf8e815e6740892c4828a7856e02029af73db5e[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Thu May 21 19:31:00 2009 +0000

    Bug 276988 - add an unsigned version of javax.persistence jar to svn for testing

[33mcommit f532596d941f0041bdc2224882453fe7e430bdca[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Thu May 14 17:28:39 2009 +0000

    Bug 263366 - project updates for Orbit

[33mcommit d5cd2711c6f44ee18ab456d3d9bc8e2fc5deb05c[m[33m ([m[1;33mtag: 2.0.0-M2.1[m[33m, [m[1;33mtag: 2.0.0-M2[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Wed Apr 22 19:23:44 2009 +0000

    Align 2.0.0 buildfiles with recent changes in 1.1.1 for various bugfixes, and versioning changes.

[33mcommit dc9f0194f6fc839cb11dc78bddd9d2a22970632f[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Mon Apr 13 15:28:20 2009 +0000

    Build updates to use files from Orbit

[33mcommit cb5f22ccc4b607f4f341f77167a834db1ae401ff[m
Author: Doug Clarke <douglas.clarke@oracle.com>
Date:   Fri Mar 20 12:07:33 2009 +0000

    simple fix - changed to relative sourcepath="persistence-src.zip" in .classpath configuration from concrete D:\... path

[33mcommit e25a7565080b75e6fdb0b35ae2dec5db25bb9b7b[m
Author: Doug Clarke <douglas.clarke@oracle.com>
Date:   Fri Mar 20 12:06:00 2009 +0000

    simple fix - changed sourcepath="src" in .classpath configuration

[33mcommit 9a0fb53ad5820aa03e6e35fe7f401a7b3bb2a0e3[m
Author: Doug Clarke <douglas.clarke@oracle.com>
Date:   Fri Mar 20 12:04:54 2009 +0000

    simple fix - added sourcepath="src" to .classpath configuration

[33mcommit 3c4dbce1628d6ab942a6144766ddea2a40f6054e[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Mon Mar 16 23:48:16 2009 +0000

    add .source to manifest for OSGi source bundles

[33mcommit 66145c5d705ad0930b2cf9d42eadd1bb73254e02[m[33m ([m[1;33mtag: 2.0.0-M1[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Feb 3 22:28:01 2009 +0000

    263086 - update components so that any that can be downloaded individually contain required legal files (readme, about, license).

[33mcommit d0bf6d93e1fc4052ba39447333385914252407ba[m
Author: Gordon Yorke <gordon.yorke@oracle.com>
Date:   Wed Jan 28 14:40:18 2009 +0000

    Patch 261910 - Deadlock during readLock during Merge
    Reviewed by James Sutherland
    Revision # 2

[33mcommit 8984a1c01f674672cfe7bac780765ab2f660a7b9[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Mon Jan 26 19:24:19 2009 +0000

    Update manifest versions and dependency update for 258057

[33mcommit 15ac90380f5682f52c05fc03f3df42f2df7db2d0[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Wed Jan 21 01:07:35 2009 +0000

    update release version to 2.0.0

[33mcommit ed5bb3749b5744cbbff4697db9223f64e6c56214[m[33m ([m[1;33mtag: 1.1.0-M8[m[33m, [m[1;33mtag: 1.1.0-M7[m[33m, [m[1;33mtag: 1.1.0-M6[m[33m)[m
Author: Doug Clarke <douglas.clarke@oracle.com>
Date:   Mon Jan 12 20:54:17 2009 +0000

    Fix for Bug 260635 - Removed .svn and related children folders. Verified by pkrogh

[33mcommit 48cec7de5adf586dc883b5895540289fa1407037[m[33m ([m[1;33mtag: 1.1.0-M5[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Tue Nov 25 21:47:09 2008 +0000

    fix for 256452

[33mcommit 1248faf9cfb20b2c8f3acf2c093df5b59dfccd08[m[33m ([m[1;33mtag: 1.1.0-M4[m[33m)[m
Author: Eric Gwin <eric.gwin@oracle.com>
Date:   Fri Nov 14 17:12:43 2008 +0000

    251410 - new build files missed in the original checkin

[33mcommit c642f2ce916e7d1253f6f82f688fc80fcb3a4d37[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Fri Oct 31 18:42:11 2008 +0000

[33mcommit 8548bd66854f38f32006ef13466bc7b121db5fa2[m[33m ([m[1;33mtag: 1.1.0-M3[m[33m)[m
Author: Mike Norman <mike.norman@oracle.com>
Date:   Wed Oct 8 19:08:07 2008 +0000

    http://dev.eclipse.org/ipzilla/show_bug.cgi?id=2740

[33mcommit 84285b94bafaad417ace87846288f394f35504be[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Mon Oct 6 18:12:47 2008 +0000

    CQ 2702

[33mcommit 27d30bf896fba8190be551bfbf870838f4746df3[m[33m ([m[1;33mtag: 1.1.0-M2[m[33m)[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Fri Aug 22 19:44:37 2008 +0000

    Bug 236700 - OSGI Source bundles

[33mcommit bf98bcb5cf4e4992e8bd906027305446a3c7cca8[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Fri Aug 15 16:40:23 2008 +0000

    Bug 243265 - OSGI: Remove split packages amongst various EclipseLink bundles

[33mcommit 01135c31bd9f942df0eb5e16f592128b1a2d9e3d[m[33m ([m[1;33mtag: 1.1.0-M1[m[33m)[m
Author: Mike Norman <mike.norman@oracle.com>
Date:   Thu Jul 17 14:33:10 2008 +0000

    part of work for https://bugs.eclipse.org/bugs/show_bug.cgi?id=232339
    (deploy to WLS 10.3), need javax.servlet APIs

[33mcommit b52aa7bf09cc89dce64a65ce9339b40ad5cadb39[m
Author: Mike Norman <mike.norman@oracle.com>
Date:   Thu Jul 17 14:31:29 2008 +0000

    part of work for https://bugs.eclipse.org/bugs/show_bug.cgi?id=232339
    (deploy to WLS 10.3), need javax.servlet APIs

[33mcommit df833ef1f42dc083aada369fa94b8aa94585d484[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Mon Jul 14 15:40:49 2008 +0000

    Bugs 238474 and 239841 - OSGi improvements

[33mcommit 1a5b51a7ac52a947f35afafab0d3f85ee798ac84[m[33m ([m[1;33mtag: 1.0.0-M11[m[33m)[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Thu Jun 19 17:58:18 2008 +0000

    Bug 236181 - update manifests to import dependencies by package instead of by bundle

[33mcommit 6bba096c809a6d30d7733175e4c4f4aa79c81167[m[33m ([m[1;33mtag: 1.0.0-M8[m[33m, [m[1;33mtag: 1.0.0-M10[m[33m)[m
Author: Doug Clarke <douglas.clarke@oracle.com>
Date:   Tue Jun 3 15:54:39 2008 +0000

    Added **/.svn/** to plugin projects (EJB, JMS, transaction, resource)

[33mcommit e9feef4951bda3355de21368ae3785cf8f73d57e[m
Author: Peter Krogh <peter.krogh@oracle.com>
Date:   Tue May 27 15:57:41 2008 +0000

    no bug number - fixed header issues.  Files contained old header.  Some files had incorrect contributors.

[33mcommit eca92f50b7df37bf316b8bbb8821dc288b7c7ab0[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Mon May 26 18:50:07 2008 +0000

    Bug 233727 - Allow ANTLR bundle to be exportable

[33mcommit a26d885ef10271deb138d04bbbfbe51bac85a075[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Tue May 20 18:04:01 2008 +0000

    Removal of eclipselink.*.lib directories and build updates

[33mcommit fe4adbf88d9140713a5dba93a5e8b7bc10d5b555[m
Author: Shaun Smith <shaun.smith@oracle.com>
Date:   Fri May 16 15:08:25 2008 +0000

    Added META-INF to binary build path so Manifest.mf it is packaged in bundles exported by PDE.

[33mcommit 994635776f943af4db363857df7dc78dd681479f[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Thu May 15 18:27:17 2008 +0000

    OSGI Tweaks

[33mcommit a3d20e9904d6868fde0e42006c664cbb7baeab42[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Wed May 14 17:54:11 2008 +0000

    Build updates to clean up manifest generation for core bundle and eclipselink.jar.  Also fixed ant bundle jar.

[33mcommit 7624991263fbe619258bead39add492581a18309[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Mon May 12 20:15:47 2008 +0000

    Update manifests to exclude META-INF so PDE projects show up correctly

[33mcommit 99955b9b058c61458cbaa75bf786526e0b914521[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Mon May 12 19:27:33 2008 +0000

    Made some bundle dependencies explicit (instead of transitive)

[33mcommit a728084c34a1c48d182dcccce890b304e45334cf[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Fri May 9 14:09:25 2008 +0000

    build script changes to allow publication of plugins jar

[33mcommit 825cfd6cc446ebf23c212ba40e1b531392c7960c[m[33m ([m[1;33mtag: 1.0.0-M7[m[33m)[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Thu May 8 15:45:27 2008 +0000

    Updated classpath to solve asm issues

[33mcommit 1973c16d4dd5b8d8493f510fe995f59de7442e09[m
Author: Tom Ware <tom.ware@oracle.com>
Date:   Wed May 7 19:49:04 2008 +0000

    Build-framework updates for generation of EclipseLink bundles
