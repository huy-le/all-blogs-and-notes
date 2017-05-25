# Archived

@thanhthuc @nguyentruongky @hungdo.aya Đối với mình, Functional & Reactive không phải là 1 cách làm, 1 phương pháp cụ thể, mà nó là 1 thứ trừu tượng, tính chất, `mindset` của programming. Không phải tự nhiên mà `Functional & Reactive` là 1 adjective bổ nghĩa cho Noun là `programming`.
Nếu bạn dạy cho những bạn chưa hề biết lập trình, bạn sẽ để ý cách `suy nghĩ` của họ hơi khác, họ không hiểu `a = b, if else, while` , vì thật ra não của `developer` đã đc train theo hướng `suy nghĩ giống như máy`. Chúng ta viết ra những dòng lệnh để `ra lệnh cho machine làm 1 task cụ thể`.

==========
`ra lệnh cho machine làm 1 task cụ thể` là cách mà đa số developer hiện giờ đang nghĩ, nó gọi là `Primitive programming`.
Sau đó, người ta nghĩ ra 1 hướng tiếp cận, `mindset` mới trong lập trình gọi là `Functional Reactive Programming`. RxSwift hay ReactiveSwift chỉ là 1 công cụ, nhưng *điều quan trọng nhất* là bạn phải suy nghĩ và tưởng tượng đc function, class, screen là có tính chất *functional* và *reactive*.

==========
*Mình nhấn mạnh là thứ cần phải training đầu tiên đó là `suy nghĩ` của developer* không phải là học cách sử dụng tool.
Ví dụ về Functional: bạn tưởng tượng *mọi thứ* là 1 hàm số `y = f(x)`. Trong đó, `y` có mối liên hệ với `x` qua hàm `f`. Và *luôn luôn* `y = f(x)` :slightly_smiling_face: That’s it.
Ví dụ mình muốn có `y` là khoảng cách bằng 1/3 chiều rộng của view. Mình dùng để nó để xác định khi nào thì 1 gesture swipe trên màn hình sẽ đc active.
```
// Non functional
y = view.width * 1/3
// Ví dụ trên, y chỉ bằng 1/3 width tại 1 thời điểm *nhất định*. Khi mình cần dùng y và gọi nó ra, có thể y không bằng 1/3 view.width nữa vì máy đã rotate.
// Thay vào đó, mình *định nghĩa* y có mối liên hệ với view.width và *luôn luôn* bằng 1/3 của view.width *bất cứ khi nào* mình gọi y.
y = { view.width * 1/3 }
// Dù có thay đổi kích thước view như thế nào
y() trả về kết quả luôn luôn == 1/3 view.width
```

Và cách suy nghĩ trên không chỉ áp dụng cho 1 variable, mà cả `class`, `function`, `object`, `screen`, `controller`, `application`, anything.

Mình không có phải master về Functional nên các bạn có thể tìm hiểu thêm, nhưng nó liên quan khá nhiều đến toán học :smile:

==========
Về Reactive, nó cũng chỉ là 1 *cách suy nghĩ* trong lập trình. Thay vì suy nghĩ phần mềm sẽ thực hiện chức năng gì. Thì với Reactive programming, developer sẽ tưởng tượng phần mềm sẽ *phản ứng* như thế nào khi 1 *hành động* gì đó xảy ra. Mình nhấn mạnh là chỉ khác nhau *cách suy nghĩ*.
Và thật ra iOS sử dụng reactive khá nhiều mà developer không biết :smile: Ví dụ: Delegate pattern.
```
// Hàm đầu tiên mà mọi iOS Developer đều gặp qua trong AppDelegate là didFinishLaunching
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool { }
// Với Reactive developer, nó nghĩa là Phần mềm của mình sẽ phản ứng lại với việc là App đã hoàn thành việc Launching
// Trong TableViewDelegate
func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {}
//Với Reactive developer, khi implement delegate này, nó nghĩa là Phần mềm của mình sẽ *phản ứng* (react) như thế nào khi mà cell sẽ đc display.
```

=========
Tưởng tượng các thành phần khác của App mình theo hướng Reactive:
```
- Khi nhập email, Label thông báo lỗi sẽ *phản ứng* lại với việc nhập text vào text field để hiển thị ra dòng error là có phải nhập đúng format email hay không.
- Spinner Pull to Refresh *phản ứng* với sự thay đổi *contentOffset* của TableView.
- TableViewCell location *phản ứng* với sự thay đổi vị trí của Gesture.
- TableView *phản ứng* với sự thay đổi của Database trong máy.
```

Vì nó chỉ là 1 hướng suy nghĩ, nên mình có thể sử dụng rất nhiều cách khác nhau để implement nó miễn là mình giữ suy nghĩ của mình theo hướng Reactive. Trong đó cơ bản nhất là sử dụng *delegate*, *closure*, *block*. Như cách mà Apple đang xài.

========
Lý do mà tool RxSwift ra đời vì delegate & closure chưa đáp ứng đủ & thuận tiện để lập trình *Funtional Reactive Programming*. Nên nhớ là có chữ *Funtional* kết hợp với *Reactive* ở đây.
Lúc này, phần mềm ( hay bất cứ cái gì ), sẽ phản ứng lại với Event, và *luôn luôn* cho ra cùng 1 kết quả với cùng 1 event. *y luôn react theo hàm f(x)* :slightly_smiling_face:

=======
Lý do Delegate & Closure chưa đám ứng đủ vì, delegate có mối quan hệ 1:1. Nhưng trong phần mềm của mình, N thứ có thể react với N sự kiện xảy ra cùng 1 lúc. Trong 1 mối quan hệ cực kỳ phức tạp.

*Closure* thì như trong RxSwift đã ghi, nó dở ở Doom Pyramid và Error Handler.

Thì Chaining sẽ giải quyết đc vấn đề đó.

========
Cuối cùng lý do để mình sử dụng Functional Reactive Programming, thì đó chỉ là 1 cách *khác* để tạo ra 1 phần mềm phức tạp, các thành phần tương tác lẫn nhau và ảnh hưởng tới nhau, mà `ít lỗi, và luôn thực hiện đúng chức năng của nó`.
