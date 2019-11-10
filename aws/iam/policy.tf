resource "aws_iam_policy" "ec2_full" {
  name   = "ec2-read-only"
  policy = "${data.aws_iam_policy_document.ec2_full.json}"
}

resource "aws_iam_user_policy_attachment" "ec2_access" {
  count      = "${length(var.user_names)}"
  user       = "${element(aws_iam_user.example.*.name, count.index)}"
  policy_arn = "${aws_iam_policy.ec2_full.arn}"
}
