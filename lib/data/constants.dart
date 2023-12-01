import 'package:cografya/data/forcetype.dart';
import 'package:cografya/data/subbranch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class Constants {
  static const Color mainColor = Colors.green;
  static Drawer drawer = Drawer(
    width: 500.w,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            child: Image.asset(
              "assets/images/drawer/buymeacoffee.png",
              width: 300.w,
              height: 100.h,
              fit: BoxFit.fill,
            ),
            onTap: () async {
              const url = "https://buymeacoffee.com/developer86";
              if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url));
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            child: Image.asset(
              "assets/images/drawer/github.png",
              width: 300.w,
              height: 100.h,
              fit: BoxFit.fill,
            ),
            onTap: () async {
              const url = "https://github.com/outterstellar/cografya";
              if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url));
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            child: Container(
              width: 300.w,
              height: 100.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).w,
                  border: Border.all(width: 2.w, color: Constants.mainColor)),
              child: Center(
                  child: Text(
                "More On My Website",
                style: TextStyle(color: Constants.mainColor, fontSize: 20.sp),
              )),
            ),
            onTap: () async {
              const url = "https://dogacevcin.com";
              if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url));
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            "Developer : Doğaç Evcin",
            style: TextStyle(color: Constants.mainColor),
          ),
        )
      ],
    ),
  );
  static List<ForceType> forcetypes = [
    ForceType(
        name: "İç Kuvvetler",
        shortDescription:
            "Gücünü ve enerjisini yerin derinliklerindeki magmadan alan ve yer şekillerinin oluşumunda etkiler yapan kuvvetlere iç kuvvetler denilmektedir. İç kuvvetlerin oluşumu sürecinde yer kabuğunda meydana gelen hareketlere tektonik hareket adı verilmektedir.İç kuvvetler; epirojenez, orojenez, volkanizma ve deprem olmak üzere dört gruba ayrılır.",
        imageName: "ickuvvetler.jpg",
        subbranchs: [
          SubBranch(
              name: "Orojenez",
              description:
                  "Deniz tabanlarındaki tortullar, levhaların birbirlerine doğru yaklaşması sırasında arada kalarak sıkışır. Böylece levhaların birbirlerine doğru hareketleri sırasında sıkışan tortul tabakaların yatay duruşları bozularak kırılmaya veya kıvrılmaya başlarlar. İşte bu hareketlere orojenik hareketler denir. Bu hareketle oluşan dağlar ise kıvrım dağları ve kırık dağlar adını alır. \n\nKıvrım Dağlar\n\nOrojenezin etkili olduğu yerlerde araziler esnek ise sıkışarak kıvrılırlar. Kıvrılan bu yapılar yükselerek su yüzeyine çıkarlar. Böylece kıvrım dağlar veya sıradağlar oluşur. Kıvrılma ile yükselen yerlere “antiklinal“, çukurlaşan yerlere ise “senklinal” adı verilir.Avrupa’da Alp’ler, Asya’da Himalaya’lar, Türkiye’de Toros ve Kuzey Anadolu Dağları bu tür hareketlerle meydana gelmişlerdir.\n\nKırıklı Dağlar\n\nOrojenezin etkili olduğu yerlerde araziler sert ise yan basınçlara karşı koyamazlar ve kırılırlar. Kırılan bu yapılar yükselerek su yüzeyine çıkarlar. Böylece kırık dağlar oluşur. Bu kırıkların yükselen bloğuna “horst“, çöken bloğuna ise “graben” adı verilir. Tabakaların kırıldıkları doğrultulara ise fay denilmektedir. Graben çukurları, akarsuların taşıdıkları malzemeler ile dolduğunda ise ovalar oluşur. Bu ovalara graben ovası veya çöküntü ovası adı verilir. Ege Bölgesi’nde, Kazdağı, Yunt Dağı, Menteşe Dağları birer horst; Bakırçay, Gediz, Küçük ve Büyük Menderes ovaları ise birer grabendir.",
              imageName: "orojenez.jpg",
              images: ["orojenez1.jpeg","orojenez2.jpg","orojenez3.jpg","orojenez4.jpeg"]),
          SubBranch(
              name: "Epirojenez",
              description:
                  "Yer kabuğunda meydana gelen dikey yönlü alçalma ve yükselme hareketlerine epirojenik hareket adı verilir. Kısacası; yer kabuğunun geniş alanlı yaylanma hareketleridir. Bu hareketler sonucunda yaylanarak yükselen ve kara haline gelen alanlara “jeoantiklinal“, alçalarak deniz çukuru haline gelen alanlara ise “jeosenklinal” adı verilmektedir. Büyük Okyanus, Atlas Okyanusu, Akdeniz, Karadeniz birer jeosenklinal alan iken; İskandinavya, Anadolu Yarımadası, Afrika birer jeoantiklinal alandır.Herhangi bir yerde epirojenez olayının olabilmesi için; izostatik dengenin bozulması gereklidir. Yer kabuğu, kalınlığı ve yoğunluğu oranında mantoya batmış durumda ve dengede durmaktadır. Bu dengeye izostatik denge denilmektedir. Bu dengenin bozulmasıyla kara ve deniz seviyelerinde değişmeler oluşmaktadır. İzostatik dengeyi bozan faktörler; erozyon, tortulanma, iklim değişmeleri, dağ oluşumu, volkanik faaliyetlerdir.İzostatik dengeyi bozan olaylar sonucunda karalar hafifleyerek yükselir. Karalar yükselince deniz seviyesi geriler ve deniz altındaki alanlar kara haline gelir. Bu şekildeki denizin karadan çekilmesi olayına regresyon adı verilmektedir. Regresyon sonucunda kara kütlelerinin yüz ölçümleri artarken deniz kütlelerinin yüz ölçümleri azalır. İzostatik dengeyi bozan olaylar sonucunda karalar ağırlaşarak mantonun içerisine de batabilir. Karalar alçalınca deniz seviyesi yükselir ve karalar deniz suyu altında kalır. Bu şekildeki denizin karaya doğru ilerlemesi olayına transgresyon adı verilmektedir. Regresyon sonucunda deniz kütlelerinin yüz ölçümleri artarken kara kütlelerinin yüz ölçümleri azalır.  Deniz ilerlemesi ve gerilemesi, gelgit olayı ile karıştırılmamalıdır. Gelgit, gün içinde denizlerin ilerlemesi veya çekilmesidir. Regresyon ve transgresyon ise ilerleyen veya çekilen deniz eski haline dönmez. ",
              imageName: "epirojenez.jpg",
              images: ["epirojenez1.jpg"]),
          SubBranch(
              name: "Volkanizma",
              description:
                  "Volkanizma\n\nYer’in derinliklerinde bulunan magmanın, yer kabuğundaki zayıf kısımlardan (çatlak, kırık vs.) yeryüzüne çıkmasına volkanizma denir.\n\nDERİNLİK VOLKANİZMASI\n\nMagmanın yer kabuğunun derinliklerindeki çatlaklardan yüzeye doğru olan hareketi sırasında lavların bir bölümü yüzey çıkamaz. Yüzeye çıkamayan lavlar çatlaklar arasına sokularak zamanla katılaşır. Soğuma sonucunda katılaşan bu kütlelerin büyük olanlarına batolit, bir damar aracılığıyla yer kabuğunun bir bölümüne sokulmuş olanlarına lakolit ve sill adı verilir.Yer’in derinliklerinden gelen magma bazen çeşitli kütleleri keserek katılaşır. Bu şekilde oluşan kayalara dayk adı verilir. Bu şekiller zamanla üst kısımlarındaki tabakaların aşındırılması sonucu yüzeye çıkarlar.\n\nYÜZEY VOLKANİZMASI\n\nMagmanın yer kabuğunun zayıf olduğu kırıklı (fay) bölgelerden yüzeye çıkmasıyla yüzey volkanizması oluşur. Yüzey volkanizması sonucu çıkan malzemelerin birikmesiyle volkan konileri oluşur.Volkan konisinin üst kesiminde huni şeklindeki çukurluğa krater, magma haznesi ile bu çukurluk arasındaki kanala ise baca adı verilir.Bazı volkan konilerinin krater kısımlarının çökmesiyle ya da ikinci bir püskürmeyle parçalanmasıyla daha büyük çukurluklar oluşur. Bunlara kaldera adı verilir. Bazı volkanik olaylarda, katı ve akışkan maddeler püskürmez. Buralarda sadece gaz patlamaları olur. Bu tür patlamalarla oluşan çukurluklara maar adı verilir.Volkan konilerinden yeryüzüne çeşitli malzemeler atılır. Bunların başında lavlar gelir. Lav, yeryüzüne çıkan akışkan kıvamdaki magmadır. Volkanlardan dışarı atılan bir diğer unsur gazlardır. Gazlar, magma içinde yüksek basınç nedeniyle çözünük hâlde bulunur.Magma yeryüzüne çıkınca soğuduğundan ve üzerindeki basınç kalktığından gazlar serbest kalır. Bu gazların önemli bölümünü su buharı oluşturmaktadır.Volkanlardan büyük basınçla çıkan gazlar beraberinde katı malzemeleri de sürükler. Bu malzemelerden boyutları 1 cm’den küçük olanlara volkan külü, 1 cm’den büyük olanlara lapilli (volkan çakılı), daha büyük olanlara ise volkan bombası denir.Volkanik dağların bulunduğu alanlar maden bakımından zengindir. Volkanizma sonucu kurşun, çinko, pirit, manganez, krom gibi madenler meydana gelir. Ayrıca volkanik alanlardaki topraklar çok verimlidir.",
              imageName: "volkanizma.jpg",
              images: ["volkan1.jpg", "volkan2.jpg", "volkan3.jpg"]),
          SubBranch(
              name: "Deprem",
              description:
                  "DEPREM\n\nYer kabuğunda çeşitli nedenlerle meydana gelen kısa süreli sarsıntılar olarak tanımlanan deprem, çevreye dalgalar hâlinde yayılış gösterir. Suya atılan taşların oluşturduğu dalgalar gibi deprem dalgaları da bir merkezden çevreye doğru yayılır. Yer kabuğu içerisinde meydana gelen depremin başladığı noktaya iç merkez (hiposantır) denir. Burada başlayıp çevreye doğru yayılan deprem dalgalarının yeryüzüne ulaştığı ilk noktaya da dış merkez (episantır) adı verilir. Dış merkez, depremin şiddetinin en fazla hissedildiği alandır. Depremin merkezinden başlayan deprem dalgaları, genel olarak çevreye üç farklı şekilde yayılır. Bunlar boyuna (P) dalgalar, enine (S) dalgalar ve yüzey (L) dalgalarıdır. Boyuna dalgalar olarak da adlandırılan P dalgaları hızlıdır ve sismografa ilk ulaşan dalgalardır. Bunların yıkıcı etkisi düşüktür. Bu dalgalardan sonra yeryüzüne ulaşan S dalgalarına enine dalgalar da denir. Düşey ve yatay yönde karışık salınımlar oluşturan R ile yatay doğrultuda yayılan L dalgaları yeryüzüne en son ulaşanlardır. Yeryüzünde sarsıntılar oluşturan ve yıkımlara neden olanlar bu dalgalardır.Oluşum nedenlerine göre depremler; çöküntü, volkanik ve tektonik depremler olmak üzere üç gruba ayrılır.\n\nÇöküntü depremler; yer altındaki mağara, galeri, tünel ve boşlukların çökmesiyle oluşan sarsıntılardır. Göçme depremler olarak da adlandırılan bu tür depremlerin etki alanı dardır. Göçme depremlere daha çok karstik alanlarda rastlanır. Madenlerin işletilmesi sonucunda meydana gelen yer altı boşluklarının göçmesi de bu tür depremlere neden olmaktadır.\n\nVolkanik depremler; volkanizma faaliyetleri sırasında meydana gelen sarsıntılardır. Aktif volkanik sahalarda görülür. Bu tür depremlere volkanik patlama sırasında, öncesinde ve sonrasında rastlanmaktadır.\n\nTektonik depremler; levha hareketleriyle meydana gelen yer değiştirme, sıkıştırma, gerilme ve kırılma sonucu oluşan sarsıntılardır. Yeryüzündeki depremlerin büyük çoğunluğu tektonik kökenlidir. Tektonik depremler, genel olarak etki alanı en geniş ve en fazla zarara neden olan deprem türüdür.\n\nYer kabuğu hareketleri sırasında meydana gelen kırıklara fay denir. Faylar; hareket yönlerine göre ters, doğrultu atımlı ve normal olmak üzere üç gruba ayrılır. Fay hatları boyunca yeryüzünde çatlaklar, yarıklar, çukurluklar oluşur ve heyelanlar meydana gelir. Fay hatlarının bulunduğu alanlarda genellikle deprem riski fazladır.",
              imageName: "deprem.jpg",
              images: [
                "deprem1.png",
                "deprem2.jpg",
                "deprem3.jpg",
                "deprem4.jpg"
              ]),
        ]),
    ForceType(
        name: "Dış Kuvvetler",
        shortDescription:
            "İç kuvvetler, kaynağını yerin iç taraflarından alan kuvvetlerdir. Mantodaki konveksiyonel akımlardan dolayı oluşmaktadırlar. İç kuvvetler, orojenez, epirojenez, deprem ve volkanizma olarak dört gruba ayrılırlar. Peri bacaları iç kuvvetlerle oluşmuş yapılara örneklerdir.",
        imageName: "diskuvvetler.jpeg",
        subbranchs: [
          SubBranch(
              name: "Akarsular",
              description:
                  "Aşındırma Şekilleri\n\n Zaman içerisinde akarsu farklı doğal yapılar üzerinden aşındırma yapar. Bu aşınma ile beraber daha fazla genişleme ortaya çıkar. Aynı zamanda yolu açılır ve akarsu adından da anlaşılacağı üzere şekillenir. Bu doğrultuda doğal yapı üzerinden akarsuyu şekillendiren birçok unsur bulunmaktadır.\n\n- Vadi\n\n- Peri Bacaları\n\n- Dev kazanı\n\n- Menderes\n\n- Kırgıbayır\n\n- Plato\n\n- Peneplen\n\nBütün bu doğal yapılar zaman içerisinde akarsu ile beraber farklı biçimlerde çekilir. Bu şekillerde üzerinden Akarsu yolunu bulur ve dökülecek olan noktaya doğru devam eder.\n\nAkarsu Biriktirme Şekilleri\n\nAşındırma şekilleri ile beraber aynı zamanda akarsu biriktirme şekilleri de büyük bir öneme sahiptir. Deniz kıyısında toplanma ya da deniz yükseltisine bağlı olarak, Akarsu farklı biçimlerde biriktirme gerçekleşir. Bu doğrultuda doğal yapı üzerinden Akarsu biriktirmesi gerçekleştiren birçok farklı şekil yer almaktadır. \n\n- Delta\n\n- Birikinti yelpazesi\n\n- Seki (Taraça)\n\n- Birikinti konisi\n\n- Dağ Eteği Ovası\n\n- Irmak adası (Kum adası)\n\n Ortaya çıkan bu doğal yapılar ile beraber akarsu üzerinden şekillenme gerçekleştirilir. Yani diğer bir ifade ile akarsu üzerinden bu şekiller ortaya çıkar. Büyüklükleri ve yapısı ile beraber genel şekilleri akarsuyun biriktirme işlemine bağlı olarak değişkenlik gösterebilir. Bu bağlamda deniz yükseltisi ya da deniz kıyısı ile beraber eğim gibi unsurlar bu konuda büyük öneme sahiptir.",
              imageName: "menderes.jpeg",
              images: ["akarsu1.jpg","akarsu2.jpg","akarsu3.jpg"]),
          SubBranch(
              name: "Yer Altı Suları",
              description:
                  "Yer Altı Suları\n\nYeryüzündeki suların bir kısmı, geçirimli tabakalardan ya da kaya çatlaklarından yer altına sızar. Yer altına sızan sular, kum taşı ve çakıltaş gibi gözenekli kayaçların arasında ya da kalker gibi kayaçların oyuklarında ve çatlaklarında birikerek yer altı suyunu oluşturur. Yer altı suyunu barındıran bu kayaçlara “akifer” denir.\n\nYer altı suları, bazen geçirimsiz bir tabaka üzerinde birikir. Bu tür sulara taban suyu denir. Taban suyu seviyesi yağışlı bölgelerde yüzeye yakın, kurak bölgelerde alçakta olur. İklime bağlı olarak taban suyu seviyesi mevsimlere göre değişiklik gösterir. Taban suyu seviyesini etkileyen etmenlerden biri de geçirimsiz tabakanın yüzeye yakınlığıdır.Taban suları, yer çekimine bağlı olarak aşağı doğru hareket eder. Geçirimsiz tabakanın uzanışına bağlı olarak aşağı hareket eden bu suların yeryüzüyle kesiştiği yerlerde yeryüzüne doğru akışa geçer. Kendiliğinden yeryüzüne çıkan bu sulara kaynak denir.\n\nKaynak, sularının özelliğine göre farklılıklar gösterir. Bazı kaynakların suları sıcak, bazılarınınki soğuktur. Bazı kaynaklar, bol miktarda mineral ve gaz içerirken bazı kaynaklar içme suyu niteliğindedir. Kaynakların oluşum şekilleri de farklılık gösterir.Kaynak sularının başlıcaları artezyen, karstik kaynak, vadi, tabaka, fay kaynağı ve gayzerdir.",
              imageName: "yeraltisulari.jpg",
              images: ["yeralti1.jpg","yeralti2.jpg","yeralti3.jpg","yeralti4.jpg"]),
          SubBranch(
              name: "Rüzgarlar",
              description:
                  "Günlük sıcaklık farkının fazla olduğu bölgelerde mekanik çözülmelerin şiddetli bir şekilde gerçekleştiği bilinir. Bununla birlikte rüzgarların bu gibi bölgelerde oluşan kırıntıları, ince kumları ve tozları havaya taşıdığı söylenebilir. Rüzgarlar tarafından havaya kaldırılan toz, ince kum veya kırıntı şeklindeki parçaların da çarptığı yerde aşınmaya yol açtığı görülür. Rüzgar aşındırmasının yaygın olarak bilinen ismi de korozyondur. Bu bağlamda sıklıkla araştırılan konulardan biri de rüzgarların oluşturduğu yer şekilleri olarak belirtilebilir. Rüzgarların oluşturduğu yer şekilleri açıklanırken dikkat çekilmesi gereken husus ise bu yapıların aşındırma veya biriktirme yoluyla ortaya çıkabilmesidir. Dolayısıyla ilk olarak rüzgar aşındırma şekillerinin aşağıdaki gibi sıralanmasında fayda vardır:\n\nMantar Kaya (Şeytan Masası): Rüzgar tarafından taşınan küçük yapıdaki kırıntıların, kayaların alt kısmında aşınmaya yol açması sonucunda oluşur. Kayaların alt kısmının aşınmasıyla oluştuğu için bu yer şekillerinin adından da anlaşıldığı üzere mantar şeklinde olduğu söylenebilir.\n\nTafoni: Kayaçların aşınması sonucunda ortaya çıkan materyallerin rüzgar tarafından taşınmasına bağlı olarak oluşur. Bu oyukların oluşumunda rüzgarın yanı sıra suyun da etkili olduğu bilinir.\n\nŞahit Kaya: Bu şekiller genel olarak yatay duruşlu olan ve farklı dirence sahip kayaların aşınması sonucunda oluşur. Kayaların sert tabakası yavaş, yumuşak tabakası ise hızlı bir şekilde aşındığından ötürü şahit kayalar ortaya çıkar.\n\nYardang: Yan yana uzanan ve farklı sertlikte olan kayaların bulunduğu yerlerde yardang oluşumuna rastlanır. Bu yer şekilleri genellikle 'U' profili gösteren oluklar olarak bilinirken, aynı zamanda girintili çıkıntılı ve pürüzlü bir yapıya sahiptir.",
              imageName: "diskuvvetler.jpeg",
              images: ["diskuvvetler.jpeg", "ruzgar.jpg", "ruzgar2.jpg"]),
          SubBranch(
              name: "Buzullar",
              description:
                  "Buzullar tarafından oluşturulan yer şekilleri kutup bölgelerinde ve dağların yüksek zirvelerinde etkisini gösteren dış kuvvetlerdir. Bu bölgelerde sıcaklıklar son derece düşük olduğunda yağan kar erimeden üst üste birikmeye devam eder. Böyle durumlarda birikimler kar katmanlarının kalıcı hale gelmesine neden olur. Bu durum kalıcı yani toktağan kar olarak da isimlendirilir. Buzullar en önemli dış kuvvetler arasında yer alır.\n\n Buzul Aşındırma Şekilleri\n\nSirk Çukuru\n\nSirk çukuru buzul aşındırma şekilleri arasında en çok rastlanan yer şeklidir. Dağların zirvelerine yakın yerlerde bulunan yamaçlarda küçük çukurlar içerisine yerleşen buzulların ortaya çıkardığı şekillerdir. Çukur içerisine yerleşen buzullar ağırlıkları nedeniyle çukurları daha da aşındırır ve genişletir. Çanak haline gelen çukurluklar genellikle 50 metre kadar genişleyebilir. Ancak bazı bölgelerde bu şekillerin km boyutlarına erişebildiğini de söylemek mümkün olur.\n\nBuzul Vadisi\n\nDağların yamaç kısımlarında hareket eden buzul tabanını aşındırması neticesinde meydana gelen U şeklindeki oluklar olarak tanımlanır. Bunlar aynı zamanda tekne vadi olarak da isimlendirilmektedir.\n\nHörgüç Kaya\n\nHörgüç kaya buzullar tarafından oluşturulan yer şekilleri arasında yer bulunuyor. Kayaların yumuşak olan taraflarının aşınarak sert kısımlarının tümsek şeklinde kalması ile meydana gelirler. Meydana gelmelerinde en büyük etki ise kayaların farklı dirençlerde olmasıdır.\n\nBuzul Biriktirme Şekilleri\n\nMoren\n\nMorenler buzulların taşıdıkları malzemelerin erdikleri yerde biriktirmesi ile oluşan şekillerdir. Buzul taşlardan oluşan setler olarak da tanımlanabilir. Setler içerisinde eriyen buzullar suların birikmesi sonrasında da moren set gölleri meydana gelir.\n\nSander Düzlükleri\n\nSander düzlükleri buzulların biriktirdiği malzemeler buzuldan beslenen akarsular tarafından taşınır. Eğimin azaldığı yerlerde de bu biriktirmeler sonrasında düzlükler oluşturur. Bunlar Sander ovası olarak da isimlendirilmektedir.\n\nDrumlin\n\nBuzulların erime bölgesine yakın olan yerlerde iklim ve beslenme şartlarına bağlı şekilde oluşan yassı tepeciklerdir. Balina sırtına benzeyen yapısı ile bilinir.\n\nBuzul Örtüsü\n\nBuzul örtüsü kutupların yakın saha kısımlarında meydana gelen binlerce km alan kaplayan kalın buzul örtüleridir. Özellikle Grönland ve Antartika buzulların dünyada çok fazla görüldüğü yerlerdir. Kutup bölgelerindeki buzullar buzul dağları oluşturabilecek boyutlara ulaşabilmektedir. Bunun yanında kutupların çevresindeki denizlerdeki suyun donması ile oluşan buz kütleleri de bankiz olarak isimlendirilmektedir.",
              imageName: "buzul1.jpg",
              images: ["buzul1.jpg", "buzul2.jpg", "buzul3.jpg"]),
          SubBranch(
              name: "Dalgalar",
              description:
                  "Türkiye'de dalga ve akıntılar tarafından oluşturulan yer şekilleri en temelde aşındırma ve biriktirme şeklinde ortaya çıkar. Aşındırma şekilleri dik kıyılarda yoğun görülür. Dalgalar hızlıca kıyıya çarpar ve çarptığı yüzeyin aşınmasına neden olur. Bu aşındırma sonrasında da dik kıyıların alt kısımları oyulmaya başlar. Deniz mağaralarının oluşumuna neden olur. Alt kısımları aşınan kıyılar denize doğru çöker ve duvar gibi düz kıyılar haline gelir. Bu tarz kıyılar falezli yani yalıyar kıyı ismini alır.Bunların yanında dalgalar tarafından biriktirme şekilleri de oluşturulur. Biriktirme şekilleri denizin derin olmayan kısımlarında oluşur. Kıyıya gelmeden zemine dokunarak kırılır tabanda bulunan kum ve şekiller kıyıya doğru sürüklenir. Bunlar da kıyı önünde birikim yapar.\n\n Dalgaların Biriktirme Şekilleri\n\nDalgalar tarafından meydana getirilen birçok biriktirme şeklinden bahsetmek mümkündür. Bu birikim şekilleri şunlardır:\n\nKıyı Oku\n\nKum ve çakılların karanın deniz tarafına doğru oluşturduğu burunlarda birikmesi ile meydana gelmektedir.\n\nKıyı Kordonu (Set)\n\nDalgaların getirmiş olduğu kum ve çakılların koyların önünde birikimi ile ortaya çıkan şekillerdir.\n\nLagün (Deniz Kulağı)\n\nKıyı kordonlarının koyun ön kısımlarını tamamen kapatarak meydana getirdiği şekillerdir. Fethiye- Ölüdeniz buna örnek verilebilir.\n\nBağlama Kordonu (Tombolo)\n\nKıyı oklarının, kıyıların yakınlarında bir adaya uzanarak kayaya bağlanması sonucunda meydana gelir. Örnek olarak ise Sinop- İnceburun Yarımadası, Erdek- Kapıdağ Yarımadası verilebilir.",
              imageName: "dalga1.jpg",
              images: ["dalga1.jpg", "dalga2.jpg", "dalga3.jpg"])
        ]),
  ];
}
