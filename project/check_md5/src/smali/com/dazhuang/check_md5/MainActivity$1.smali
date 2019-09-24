.class Lcom/dazhuang/check_md5/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dazhuang/check_md5/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dazhuang/check_md5/MainActivity;


# direct methods
.method constructor <init>(Lcom/dazhuang/check_md5/MainActivity;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/dazhuang/check_md5/MainActivity$1;->this$0:Lcom/dazhuang/check_md5/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 34
    iget-object p1, p0, Lcom/dazhuang/check_md5/MainActivity$1;->this$0:Lcom/dazhuang/check_md5/MainActivity;

    invoke-static {p1}, Lcom/dazhuang/check_md5/MainActivity;->access$000(Lcom/dazhuang/check_md5/MainActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/dazhuang/check_md5/MainActivity$1;->this$0:Lcom/dazhuang/check_md5/MainActivity;

    invoke-static {v0}, Lcom/dazhuang/check_md5/MainActivity;->access$100(Lcom/dazhuang/check_md5/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dazhuang/check_md5/MainActivity$1;->this$0:Lcom/dazhuang/check_md5/MainActivity;

    invoke-static {v1}, Lcom/dazhuang/check_md5/MainActivity;->access$200(Lcom/dazhuang/check_md5/MainActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/dazhuang/check_md5/MainActivity;->checkSN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/dazhuang/check_md5/MainActivity$1;->this$0:Lcom/dazhuang/check_md5/MainActivity;

    const v1, 0x7f0c0022

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/dazhuang/check_md5/MainActivity$1;->this$0:Lcom/dazhuang/check_md5/MainActivity;

    const v1, 0x7f0c0021

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
