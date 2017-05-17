.class public Lcom/android/contacts/common/ClipboardUtils;
.super Ljava/lang/Object;
.source "ClipboardUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "showToast"    # Z

    .prologue
    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 51
    :cond_0
    const-string/jumbo v3, "clipboard"

    .line 50
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 52
    .local v1, "clipboardManager":Landroid/content/ClipboardManager;
    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    .line 53
    .end local p1    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->removeLtrDirection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {p1, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 54
    .local v0, "clipData":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 56
    if-eqz p3, :cond_2

    .line 57
    const v3, 0x7f090145

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "toastText":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 47
    .end local v2    # "toastText":Ljava/lang/String;
    :cond_2
    return-void
.end method
