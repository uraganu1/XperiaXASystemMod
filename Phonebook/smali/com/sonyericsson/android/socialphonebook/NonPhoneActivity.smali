.class public Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "NonPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;
    }
.end annotation


# static fields
.field private static final FRAGMENT_NAME:Ljava/lang/String;

.field private static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->FRAGMENT_NAME:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method private addOrReplaceDialogFragment()V
    .locals 5

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "phoneNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->finish()V

    .line 67
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->FRAGMENT_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 71
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_1

    .line 72
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;->newInstance(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 74
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->FRAGMENT_NAME:Ljava/lang/String;

    .line 73
    invoke-virtual {v3, v0, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 63
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 77
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 79
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 80
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;->newInstance(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;

    move-result-object v0

    .line 81
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->FRAGMENT_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 87
    return-object v3

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 90
    .local v0, "data":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 91
    return-object v3

    .line 93
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "scheme":Ljava/lang/String;
    const-string/jumbo v2, "tel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    return-object v3

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->addOrReplaceDialogFragment()V

    .line 53
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->setIntent(Landroid/content/Intent;)V

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;->addOrReplaceDialogFragment()V

    .line 58
    return-void
.end method
