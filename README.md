(Vietnamese version below)
# Minima Template

A refined, minimalist template for [Typst](https://typst.app), based on [`bubble-template`](https://github.com/hzkonor/bubble-template). This template strips away unnecessary visual details for a clean setup, perfect for note taking, handouts, and reports. 

Unlike the original, this template doesn't include any extra packages and is meant to be used modularly. `codelst` can be replaced by [`codly`](https://typst.app/universe/package/codly/).
## Architectural Features

Most of the features in the original `bubble-template` were kept, albeit with some extra modifications: 

- **Display of operators:** Used array loops to bundle `math.display` and `math.limits` across fractions, matrices, cases, and integrals. This eliminates repetitive code while ensuring symbols remain legible and correctly formatted in block form.
- **Math classes:** Quantifiers like `∀`, `∃`, and `∄` are processed via a single loop that changes their class to `binary`. This ensures proper padding from variables without manual spacing tricks.
- **Western European-style upright integrals:** Automatically activates the native upright integral variants across supported typefaces (like `New Computer Modern` and `STIX Two Math`) by configuring the appropriate `stylistic-set` font features directly within the equation context.
## Usage & Integration

To use this package, download it (addition to the [Typst Universe](https://typst.app/universe/) pending) and save it to `@local`, then use:

```
#import "@local/minima-template:0.1.0": *

#show: minima.with(
  title: [Example document],
  subtitle: [Teaching assistant A],
  author: "Mr. X",
  affiliation: [Y University],
  global-font: "New Computer Modern",
  math-font: "New Computer Modern Math",
  class: [Class Z],
  global-lang: "en", // Set your language
  main-color: "#16977b",
  logo: [],
)
```
An [example](https://github.com/songoffireandice03/minima-template/blob/main/example.typ) and its corresponding [PDF](https://github.com/songoffireandice03/minima-template/blob/main/example.pdf) have been given in the repo.
---
# Minima Template

Một bản mẫu (template) tối giản, tinh tế dành cho [Typst](https://typst.app), được phát triển dựa trên [`bubble-template`](https://github.com/hzkonor/bubble-template)[cite: 5]. Bản mẫu này lược bỏ các chi tiết hình ảnh không cần thiết để mang lại một cấu hình gọn gàng, hoàn hảo cho việc ghi chép, tài liệu phát tay và làm báo cáo[cite: 5]. 

Khác với bản gốc, bản mẫu này không đi kèm bất kỳ gói bổ sung nào và được thiết kế để sử dụng theo mô-đun[cite: 5]. Bạn hoàn toàn có thể thay thế `codelst` bằng [`codly`](https://typst.app/universe/package/codly/)[cite: 5].

## Tính năng cấu trúc

Hầu hết các tính năng trong `bubble-template` gốc vẫn được giữ lại, tuy nhiên đã có một số tinh chỉnh bổ sung[cite: 5]: 

- **Hiển thị toán tử:** Sử dụng các vòng lặp mảng để áp dụng đồng thời `math.display` và `math.limits` cho phân số, ma trận, hàm phân nhánh (cases) và tích phân. Điều này giúp loại bỏ mã nguồn trùng lặp mà vẫn đảm bảo các ký hiệu luôn rõ ràng và được định dạng chuẩn xác ở dạng khối (block form).
- **Lớp toán học (Math classes):** Các toán tử lượng từ như `∀`, `∃` và `∄` được xử lý qua một vòng lặp duy nhất để chuyển đổi lớp của chúng thành `binary`. Phương pháp này đảm bảo khoảng cách hiển thị với các biến số luôn chuẩn xác mà không cần dùng đến các mẹo căn lề thủ công.
- **Tích phân dáng thẳng theo phong cách Tây Âu:** Tự động kích hoạt các biến thể tích phân dáng thẳng nguyên bản trên các bộ phông chữ được hỗ trợ (như `New Computer Modern` và `STIX Two Math`) bằng cách cấu hình các thuộc tính tính năng phông chữ `stylistic-set` phù hợp ngay trong ngữ cảnh của phương trình.

## Cách sử dụng & Tích hợp

Để sử dụng gói này, hãy tải về (hiện đang chờ được thêm vào [Typst Universe](https://typst.app/universe/)) và lưu vào thư mục `@local`, sau đó khai báo[cite: 5]:

```
#import "@local/minima-template:0.1.0": *

#show: minima.with(
title: [Example document],
subtitle: [Teaching assistant A],
author: "Mr. X",
affiliation: [Y University],
global-font: "New Computer Modern",
math-font: "New Computer Modern Math",
class: [Class Z],
global-lang: "en", // Chọn ngôn ngữ của bạn
main-color: "#16977b",
logo: [],
)
```
Một tệp tin [mẫu](https://github.com/songoffireandice03/minima-template/blob/main/example.typ) cùng bản [PDF](https://github.com/songoffireandice03/minima-template/blob/main/example.pdf) đi kèm đã được cung cấp sẵn trong repo này.
