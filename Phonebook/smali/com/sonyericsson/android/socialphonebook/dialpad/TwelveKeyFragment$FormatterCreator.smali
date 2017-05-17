.class Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$FormatterCreator;
.super Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/FormatterAsyncCreator;
.source "TwelveKeyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatterCreator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$FormatterCreator;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    .line 175
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/FormatterAsyncCreator;-><init>(Landroid/content/Context;)V

    .line 174
    return-void
.end method


# virtual methods
.method protected onFormatterCreated(Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;)V
    .locals 1
    .param p1, "phoneNumberFormatter"    # Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$FormatterCreator;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;)Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    .line 179
    return-void
.end method
