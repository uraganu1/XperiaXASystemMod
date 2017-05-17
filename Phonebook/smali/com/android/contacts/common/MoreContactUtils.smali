.class public Lcom/android/contacts/common/MoreContactUtils;
.super Ljava/lang/Object;
.source "MoreContactUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "mimetype1"    # Ljava/lang/CharSequence;
    .param p1, "data1"    # Ljava/lang/CharSequence;
    .param p2, "mimetype2"    # Ljava/lang/CharSequence;
    .param p3, "data2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 56
    :cond_0
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 59
    :cond_1
    if-eqz p1, :cond_2

    if-nez p3, :cond_3

    :cond_2
    return v1

    .line 63
    :cond_3
    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 65
    return v1

    .line 68
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/MoreContactUtils;->shouldCollapsePhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static shouldCollapsePhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method
