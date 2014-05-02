function gen_mail_to_link(lhs,rhs) {
    document.write("<A HREF=\"mailto");
    document.write(":" + lhs + "@");
    document.write(rhs + "\">" + lhs + "@" + rhs + "<\/A>");
}

function email() {
  gen_mail_to_link('joey','joeypereira.com');
}
