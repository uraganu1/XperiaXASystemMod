.class public Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/EmptyPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "EmptyPhoneNumberFormatter.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const-string/jumbo v0, ""

    return-object v0

    .line 17
    :cond_0
    return-object p1
.end method
