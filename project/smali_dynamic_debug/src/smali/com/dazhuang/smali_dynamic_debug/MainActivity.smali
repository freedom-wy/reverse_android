.class public Lcom/dazhuang/smali_dynamic_debug/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dazhuang/smali_dynamic_debug/MainActivity$bt_button1_change_text;
    }
.end annotation


# instance fields
.field private bt_button1:Landroid/widget/Button;

.field private et_text1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/dazhuang/smali_dynamic_debug/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/dazhuang/smali_dynamic_debug/MainActivity;->et_text1:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001c

    .line 18
    invoke-virtual {p0, p1}, Lcom/dazhuang/smali_dynamic_debug/MainActivity;->setContentView(I)V

    const p1, 0x7f0700a7

    .line 21
    invoke-virtual {p0, p1}, Lcom/dazhuang/smali_dynamic_debug/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dazhuang/smali_dynamic_debug/MainActivity;->et_text1:Landroid/widget/TextView;

    const p1, 0x7f070042

    .line 22
    invoke-virtual {p0, p1}, Lcom/dazhuang/smali_dynamic_debug/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dazhuang/smali_dynamic_debug/MainActivity;->bt_button1:Landroid/widget/Button;

    .line 25
    iget-object p1, p0, Lcom/dazhuang/smali_dynamic_debug/MainActivity;->bt_button1:Landroid/widget/Button;

    new-instance v0, Lcom/dazhuang/smali_dynamic_debug/MainActivity$bt_button1_change_text;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dazhuang/smali_dynamic_debug/MainActivity$bt_button1_change_text;-><init>(Lcom/dazhuang/smali_dynamic_debug/MainActivity;Lcom/dazhuang/smali_dynamic_debug/MainActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
