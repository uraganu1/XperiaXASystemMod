.class public abstract Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/TextWatcherFormatterAsyncCreator;
.super Landroid/os/AsyncTask;
.source "TextWatcherFormatterAsyncCreator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/text/TextWatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private mCountryDetector:Landroid/location/CountryDetector;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    const-string/jumbo v0, "country_detector"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/TextWatcherFormatterAsyncCreator;->mCountryDetector:Landroid/location/CountryDetector;

    .line 17
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 29
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/TextWatcherFormatterAsyncCreator;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/TextWatcherFormatterAsyncCreator;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "result"    # Landroid/text/TextWatcher;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/TextWatcherFormatterAsyncCreator;->onTextWatcherCreated(Landroid/text/TextWatcher;)V

    .line 33
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Landroid/text/TextWatcher;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/TextWatcherFormatterAsyncCreator;->onPostExecute(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected abstract onTextWatcherCreated(Landroid/text/TextWatcher;)V
.end method
