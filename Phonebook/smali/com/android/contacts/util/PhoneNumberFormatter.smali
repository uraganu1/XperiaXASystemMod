.class public final Lcom/android/contacts/util/PhoneNumberFormatter;
.super Ljava/lang/Object;
.source "PhoneNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 75
    new-instance v1, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;-><init>(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 76
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    .line 75
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void
.end method
