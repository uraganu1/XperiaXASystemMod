.class public abstract Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/FormatterAsyncCreator;
.super Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/TextWatcherFormatterAsyncCreator;
.source "FormatterAsyncCreator.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/TextWatcherFormatterAsyncCreator;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected abstract onFormatterCreated(Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;)V
.end method

.method protected onTextWatcherCreated(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 20
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;-><init>(Landroid/text/TextWatcher;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/FormatterAsyncCreator;->onFormatterCreated(Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;)V

    .line 19
    return-void
.end method
