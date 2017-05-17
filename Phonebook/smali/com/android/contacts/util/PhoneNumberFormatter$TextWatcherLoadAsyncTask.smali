.class Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;
.super Landroid/os/AsyncTask;
.source "PhoneNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/PhoneNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextWatcherLoadAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/telephony/PhoneNumberFormattingTextWatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCountryCode:Ljava/lang/String;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mCountryCode:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    .line 42
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 49
    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    iget-object v1, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/telephony/PhoneNumberFormattingTextWatcher;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/telephony/PhoneNumberFormattingTextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/telephony/PhoneNumberFormattingTextWatcher;

    .prologue
    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 53
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "watcher"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    .end local p1    # "watcher":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->onPostExecute(Landroid/telephony/PhoneNumberFormattingTextWatcher;)V

    return-void
.end method
