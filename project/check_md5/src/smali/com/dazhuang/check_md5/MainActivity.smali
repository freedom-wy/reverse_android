.class public Lcom/dazhuang/check_md5/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private btn_register:Landroid/widget/Button;

.field private edit_password:Landroid/widget/EditText;

.field private edit_sn:Landroid/widget/EditText;

.field private edit_userName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dazhuang/check_md5/MainActivity;)Landroid/widget/EditText;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/dazhuang/check_md5/MainActivity;->edit_userName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dazhuang/check_md5/MainActivity;)Landroid/widget/EditText;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/dazhuang/check_md5/MainActivity;->edit_sn:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dazhuang/check_md5/MainActivity;)Landroid/widget/EditText;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/dazhuang/check_md5/MainActivity;->edit_password:Landroid/widget/EditText;

    return-object p0
.end method

#方法接收三个字符串参数，返回布尔值
.method public static checkSN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    #判断是否为0，如果为0，则cond_6为return
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2
    # 如果v2不为0，向下执行
    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_6

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_6

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_2

    .line 61
    :cond_2
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    const-string v2, "MD5"

    .line 63
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 65
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 66
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 67
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-ge v2, v3, :cond_3

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 70
    :cond_3
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    #判断用户名的MD5值和SN码是否相等
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    .line 78
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1

    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_6
    :goto_2
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001c

    .line 22
    invoke-virtual {p0, p1}, Lcom/dazhuang/check_md5/MainActivity;->setContentView(I)V

    const p1, 0x7f0700b6

    .line 24
    invoke-virtual {p0, p1}, Lcom/dazhuang/check_md5/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dazhuang/check_md5/MainActivity;->edit_userName:Landroid/widget/EditText;

    const p1, 0x7f070063

    .line 25
    invoke-virtual {p0, p1}, Lcom/dazhuang/check_md5/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dazhuang/check_md5/MainActivity;->edit_sn:Landroid/widget/EditText;

    const p1, 0x7f070078

    .line 26
    invoke-virtual {p0, p1}, Lcom/dazhuang/check_md5/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dazhuang/check_md5/MainActivity;->edit_password:Landroid/widget/EditText;

    const p1, 0x7f07009d

    .line 27
    invoke-virtual {p0, p1}, Lcom/dazhuang/check_md5/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dazhuang/check_md5/MainActivity;->btn_register:Landroid/widget/Button;

    .line 30
    iget-object p1, p0, Lcom/dazhuang/check_md5/MainActivity;->btn_register:Landroid/widget/Button;

    new-instance v0, Lcom/dazhuang/check_md5/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/dazhuang/check_md5/MainActivity$1;-><init>(Lcom/dazhuang/check_md5/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method