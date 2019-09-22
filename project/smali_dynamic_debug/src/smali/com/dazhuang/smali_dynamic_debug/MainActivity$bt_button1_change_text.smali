.class Lcom/dazhuang/smali_dynamic_debug/MainActivity$bt_button1_change_text;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dazhuang/smali_dynamic_debug/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "bt_button1_change_text"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dazhuang/smali_dynamic_debug/MainActivity;


# direct methods
.method private constructor <init>(Lcom/dazhuang/smali_dynamic_debug/MainActivity;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/dazhuang/smali_dynamic_debug/MainActivity$bt_button1_change_text;->this$0:Lcom/dazhuang/smali_dynamic_debug/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dazhuang/smali_dynamic_debug/MainActivity;Lcom/dazhuang/smali_dynamic_debug/MainActivity$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/dazhuang/smali_dynamic_debug/MainActivity$bt_button1_change_text;-><init>(Lcom/dazhuang/smali_dynamic_debug/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 31
    iget-object p1, p0, Lcom/dazhuang/smali_dynamic_debug/MainActivity$bt_button1_change_text;->this$0:Lcom/dazhuang/smali_dynamic_debug/MainActivity;

    invoke-static {p1}, Lcom/dazhuang/smali_dynamic_debug/MainActivity;->access$100(Lcom/dazhuang/smali_dynamic_debug/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0c001d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
