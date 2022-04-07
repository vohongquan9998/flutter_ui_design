import 'package:flutter_storybook/models/book.dart';

List<Book> getData() {
  List<Book> list = [
    Book(
        bookTitle: 'Sherlock Holmes Tập 1 - Phần 01',
        deScription:
            "Sherlock Holmes là một thám tử tư ở Luân Đôn nổi tiếng nhờ trí thông minh, khả năng suy diễn logic và quan sát tinh tường trong khi phá những vụ án mà cảnh sát phải bó tay.Sherlock Holmes đã xuất hiện trong 4 tiểu thuyết và 56 truyện ngắn của nhà văn Conan Doyle. Hầu như tất cả các tác phẩm đều được viết dưới dạng ghi chép của bác sĩ John H.Watson, người bạn thân thiết và người ghi chép tiểu sử của Holmes, chỉ có 2 tác phẩm được viết dưới dạng ghi chép của Holmes và 2 tác phẩm khác dưới dạng ghi chép của người thứ ba....Nhiều người cho rằng Sherlock Homes là nhân vật thám tử hư cấu nổi tiếng nhất trong lịch sử văn học và là một trong những nhân vật văn học được biết đến nhiều nhất trên toàn thế giới.Đến với bộ sách Sherlock Holmes toàn tập, quý độc giả sẽ hiểu vì sao tác phẩm này lại được bạn đọc khắp thế giới yêu thích đến như thế.",
        voTe: 4,
        maxPage: 555,
        auThor: 'Sir Arthur Conan Doyle',
        lang: 'Tiếng Việt',
        imgPath: 'assets/sherlockHolmes.png',
        cateGories: [
          'Văn học nước ngoài',
          'Văn học kinh điển',
          'Trinh thám'
        ],
        page: [
          "Bạn đọc yêu thích truyện trinh thám thế giới có lẽ không ai là không biết đến tên tuổi của nhà văn Conan Doyle (1859 – 1930), “cha đẻ” của nhân vật thám tử lừng lẫy Sherlock Holmes.",
          "Tuy nhiên, không phải ai cũng biết rằng xung quanh việc ra đời những tác phẩm liên quan đến nhà thám tử tài ba này, bản thân tác giả của nó đã từng có những hành động hết sức ly kỳ, hấp dẫn không kém những gì mà thám tử Sherlock Holmes từng phô diễn.",
          "Nguồn gốc tên gọi Sherlock Holmes: \nTrước đây người ta đã dựa theo một nguồn tư liệu để khẳng định rằng: Sherlock là tên của một người chơi Cricket danh tiếng (vào những năm 70 của thế kỷ XIX). Người này có quen biết với Conan Doyle. Tuy nhiên, sherlock mới chỉ là tên riêng, còn họ của nhân vật? Nhà báo Anh tên là Bill West đã vận dung tới nhiều nguồn tư liệu để khẳng địng rằng: Có một người tên là Edwin Holmes, từng phát minh ra hệ thống báo động chống kẻ trộm khiến Doyle rất khâm phục. Và để bày tỏ sự hâm mộ của mình, nhà văn đã không ngần ngại dùng họ của nhà phát minh đó làm tên họ cho nhân vật của mình.\nVậy là, tên của một cầu thủ Cricket và họ của một nhà phát minh sáng chế đã kết hợp thành tên sherlock holmes.Conan Doyle đã từng 'thủ tiêu' nhân vật yêu quý của mình.\n",
          "Nhờ những câu chuyện phá án vô cùng ly kỳ, hấp dẫn của nhân vật thám tử tài trí sherlock holmes mà Conan Doyle đã có được một nguồn thu nhập dồi dào giúp ông nuôi sống được cả gia đình, và hơn thế còn trở nên một nhà văn giàu có. Tuy nhiên, bởi mất quá nhiều thời gian và công sức với loại truyện trinh thám này, mệt mỏi căng thẳng vì phải theo đuổi những pha truy bắt đầy kịch tính của nhân vật, đã có lúc Conan Doyle nghĩ đến “thủ tiêu” nhân vật, để cho sherlock holmes chết là kết thúc câu chuyện phải ngày đêm nắn bóp theo đơn đặt hàng của báo chí. Ý đồ của ông đã bị mẹ ông kịch liệt phản đối: “Con không được giết anh ta! Con không có quyền!”. Khi một tờ tạp chí nọ đặt Conan Doyle viết tiếp một loạt truyện nữa về sherlock holmes, nhà văn đã tìm cách đặt giá cao, cốt để họ rút lại lời đề nghị. Không ngờ họ chấp nhận ngay lời đề nghị này không một lời bàn cãi. Thế là Conan Doyle không làm sao thực hiện được mong muốn của mình. \n",
          "Nhưng rồi một ngày nọ, bởi quá mệt mỏi, Conan Doyle đã kiên quyết chấm dứt cuộc đời của sherlock holmes. Trong một truyện ngắn, ông để cho anh ta bất cẩn tiến đến mép của một tảng đá và rơi xuống thác nước Reichenbach. Ngay lập tức, công chúng Anh quốc đã gửi thư bày tỏ sự phẫn nộ đối với tác giả. Áp lực của dư luận đối với nhà văn là hết sức nặng nề! Đến năm 1902, gần mười năm sau kể từ ngày sherlock holmes bị “chết mất xác”, đột nhiên Conan Doyle cho xuất hiện trở lại nhân vật thám tử sherlock holmes. Chỉ có điều câu chuyện tác giả để xảy ra vào thời gian trước khi sherlock holmes chết. Công chúng lấy làm tiếc và tới tấp gửi thư đề nghị tác giả hãy làm cách nào cho sherlock holmes sống lại. Chủ một tờ báo cũng đề nghị trả nhà văn năm nghìn đô la trường hợp ông nghĩ ra cách để sherlock holmes sống lại. Thể theo nguyện vọng của đông đảo bạn đọc, Conan Doyle đã đặt bút viết tiếp truyện “Ngày trở về của sherlock holmes” và một loạt truyện nữa. Ông đã mở đầu câu chuyện: “Mọi chuyện đã xảy ra đúng như chúng ta nghĩ. Sherlock holmes đâu có chết khi rơi xuống vực. Thật ra, anh ta không rơi xuống vực mà đã tìm cách bò dọc theo tảng đá để thoát khỏi tay kẻ thù”.\n",
          "“Thám tử” Conan Doyle tham gia phá án. \n",
          "Chúng ta đều biết, giữa cuộc đời và trang sách nhiều khi là cả một khoảng cách. Bởi vậy, việc nhân vật của Conan Doyle thành công trong việc phá án là một chuyện, việc Conan Doyle trực tiếp tham gia phá án và đã thành công (trong thực tế) lại là một chuyện khác. Nó đặc biệt có ý nghĩa. ",
          "Chẳng là, vào năm 1903, tại làng Great Wyrley ở gần Birmingham đã xảy ra một vụ án lạ lùng. Hàng loạt ngựa, bò, cừu lăn ra chết. Qua khảo sát, người ta thấy ở bụng và cổ họng của những con vật ấy có những vết thương lớn. Căn cứ vào những lá thư nặc danh, người ta xác định thủ phạm là George Edalji (con trai ông mục sư Ấn Độ và một phụ nữ Anh). Thời ấy, tinh thần kì thị chủng tộc rất mạnh ở các địa phương của nước Anh, thành ra cảnh sát đã thu thập chứng cứ một cách sơ sài và người ta chẳng băn khoăn gì mà không điệu chàng trai ra toà và kết án chàng với mức bảy năm tù khổ sai. Sau khi bị giam cầm ít lâu, chàng trai bèn viết thư nhờ Conan Doyle minh oan cho. Với bằng chứng xác đáng về việc chàng trai bị cận thị nặng, không thể nào di chuyển ngoài đồng trong đêm tối để hạ sát hàng loạt con vật như vậy được, Conan Doyle đã buộc các cơ quan hành pháp và tư pháp phải lưu ý, xem xét lại vụ việc này. Quả nhiên, qua điều tra về sau, người ta xác định được thủ phạm là kẻ khác, và chàng trai người Ấn lai ấy đã được trả tự do và danh dự. \n",
          "Cả tác giả và nhân vật đều bất tử.\n",
          "Sự bất tử của sherlock holmes thể hiện ở chỗ: hơn một trăm năm nay, bạn đọc khắp thế giới vẫn luôn tỏ ra yêu mến và quyến luyến với nhân vật này. Nhớ ngày Conan Doyle cho sherlock holmes “tạm từ giã cõi đời”, tại Luân Đôn đã liên tiếp nổ ra các cuộc biểu tình quanh trụ sở của mấy toà báo. Thậm chí, có một nhóm thanh niên mặc tang phục, đeo bảng đề tên sherlock holmes diễu hành trên đường phố. Hiện ở một số nơi, người ta còn ngưỡng mộ đến độ thành lập cả “bảo tàng sherlock holmes” cũng như thành lập các đội đặc nhiệm mang tên nhân vật thám tử tài ba nói trên.\n",
          "Còn về Conan Doyle thì khỏi phải nói sức “tái sinh” kỳ diệu của ông: Có ai tính được biết bao lần sách của ông được tái bản ở khắp nơi trên trái đất này? Lại nhớ, khi Conan Doyle qua một cơn đau tim đột ngột từ giã cõi đời, thể theo nguyện vọng của ông, bà vợ Jean Leckie của ông không để tang (vì Conan Doyle tin tưởng rằng sau khi chết đi, ông vẫn còn liên lạc được với bà). Nếu nói nhà văn tồn tại bằng tác phẩm, thì có nghĩa là Conan Doyle còn tồn tại mãi mãi",
        ]),
    Book(
        bookTitle: 'Willows of Fate',
        deScription:
            "All her life, Desdemona has seen things others haven’t. Dragons, knights, dwarves, kids with three eyes. Heeding her mother’s advice, she keeps silent about this and struggles through life, pretending everything is normal.At her mother’s death, Desdemona returns to a home haunted with memories but she is determined to not be shaken from what little normalcy she has. However, when her brother is murdered and she uncovers a family secret, Desdemona realizes that there is more to what she sees. Perhaps a whole other world, one that’s willing to kill to have her as its own.",
        auThor: 'Suzanna J Linton',
        voTe: 5,
        lang: 'Tiếng Anh',
        maxPage: 308,
        imgPath: 'assets/blabla.png',
        cateGories: ['Kinh dị', 'Tâm lý tình cảm'],
        page: [""]),
    Book(
        bookTitle: 'Suy nghĩ và làm giàu',
        deScription:
            "Think & Grow Rich - Nghĩ Giàu Và Làm Giàu là một trong những cuốn sách bán chạy nhất mọi thời đại. Đã hơn 60 triệu bản được phát hành với gần trăm ngôn ngữ trên toàn thế giới và được công nhận là cuốn sách tạo ra nhiều triệu phú hơn, một cuốn sách truyền cảm hứng thành công nhiều hơn bất cứ cuốn sách kinh doanh nào trong lịch sử \n.Tác phẩm này đã giúp tác giả của nó, Napoleon Hill, được tôn vinh bằng danh hiệu “người tạo ra những nhà triệu phú”.Đây cũng là cuốn sách hiếm hoi được đứng trong top của rất nhiều bình chọn theo nhiều tiêu chí khác nhau - bình chọn của độc giả, của giới chuyên môn, của báo chí.",
        auThor: 'Napoleon Hill',
        voTe: 4,
        maxPage: 400,
        lang: 'Tiếng Việt',
        imgPath: 'assets/thinkrich.png',
        cateGories: [
          'Kinh tế',
          'Kỹ năng sống'
        ],
        page: [
          "BÍ QUYẾT THÀNH CÔNG ĐÃ ĐƯỢC THỰC TIỄN KIỂM CHỨNG\nTrong chương nói về niềm tin bạn sẽ biết câu chuyện phi thường về ông Charles M.Shwab, một người còn rất trẻ, đã thành lập liên hiệp “Thép Mỹ” như thế nào. Với ví dụ này, ông Carneghi tin rằng công thức thành công áp dụng được cho tất cả những người sẵn sàng tiếp nhận nó. Việc ông Shwab áp dụng công thức này đã dẫn đến một sự may mắn lạ kỳ: một tài sản trị giá 600 triệu đôla.Sự thật này - ai biết ông Carneghi cũng đều biết câu chuyện đó - là một ví dụ tuyệt vời và cũng dành cho cả bạn nữa, bạn đọc ạ, với điều kiện bạn phải biết là bạn muốn gì.Bí quyết đã mở ra cho hàng ngàn nam nữ khác nhau, và họ đã sử dụng có lợi cho mình, đúng như ông Carneghi đã khởi xướng ra. Nhiều người may mắn đã tạo ra được gia sản lớn. Nhiều người nhờ có bí quyết mà tổ chức được công việc của mình. Một linh mục đã sử dụng bí quyết với một hiệu quả không ngờ, đem lại thu nhập năm cho ông hơn 75 ngàn đôla.",
          "Arthur Nash, một thợ may từ Sinsinnati, đã dùng xí nghiệp riêng đang đến gần thời kỳ phá sản của mình làm vật thí nghiệm để kiểm tra công thức thành công. Công việc hồi phục và đã đem lại cho ông một tài sản to lớn. Sự nghiệp này đến nay vẫn còn thịnh vượng - dẫu ông Nash không còn nữa. Thí nghiệm này độc đáo đến mức các báo và tạp chí đã dành hơn một triệu đôla cho những lời thán phục. ",
          "Bí quyết cũng hé mở cho Stuart Ostin Wire từ thành phố Dallas bang Texas.Ông đã sẵn sàng đón nhận thành công - sẵn sàng đến mức bỏ cả nghề cũ của mình để nghiên cứu luật. Ông có đạt được điều mình muốn hay không? Bạn sẽ biết trong khi đọc cuốn sách này.Khi còn là nhân viên quảng cáo trong trường Đại học tổng hợp ở Lasall, tôi đã gợi ý thầy hiệu trưởng J.G.Chaplin áp dụng công thức thành công - và trường Đại học tổng hợp đã trở thành một trong những trường có chương trình đào tạo nâng cao tốt nhất trong nước.Trong cuốn sách này, bí quyết được nhắc tới không dưới một trăm lần. Bí quyết không có tên gọi cụ thể, mà tôi cũng không có ý lựa chọn. Những sự vật rõ ràng không tác động đến chúng ta - vì chúng ta cần những điều bí mật. Khi đã tóm được bên ngoài của nó, chúng ta có khả năng bộc lộ sự sáng suốt của mình. Có lẽ vì thế mà ông Andrew Carneghi đã không áp đặt và không gán cho bí quyết một tên gọi riêng nào.",
        ]),
    Book(
      bookTitle: 'Dancing with The Tiger',
      deScription:
          "When 30-year-old Anna Ramsey learns that a meth-addicted looter has dug up what might be the funerary mask of Montezuma, she books the next flight to Oaxaca. Determined to redeem her father, a discredited art collector, and to one-up her unfaithful fiancae, a museum curator, Anna hurls herself headlong into Mexico's underground art world",
      auThor: 'Lili Wright',
      voTe: 4,
      maxPage: 456,
      lang: 'Tiếng Anh',
      imgPath: 'assets/dancing_with_the_tiger.png',
      cateGories: ["Viễn tưởng", "Huyền bí", "Kinh dị", "Hồi hộp"],
      page: [""],
    ),
    Book(
      bookTitle: 'Móng vuốt quạ đen - Tập 2',
      deScription:
          "Ketterdam là trung tâm giao thương quốc tế, nơi mọi thứ đều có thể đoạt lấy nếu được trả một cái giá tương xứng - và không ai hiểu rõ điều đó hơn thiên tài tội phạm Kaz Brekker. Kaz được đề nghị thực hiện một phi vụ hiểm hóc với mức tiền công sẽ giúp anh giàu sang hơn bất cứ giấc mơ điên rồ nào của mình",
      auThor: 'Leigh Bardugo',
      voTe: 5,
      maxPage: 248,
      lang: 'Tiếng Việt',
      imgPath: 'assets/six_crows.png',
      cateGories: ["Kỳ ảo", "Phiêu Lưu", "Hành động", "Trinh thám"],
      page: [""],
    ),
  ];
  return list;
}
