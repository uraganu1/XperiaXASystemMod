.class public Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "InsertGalContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;,
        Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;
    }
.end annotation


# static fields
.field public static final EXTRA_SAVE_OR_EXPORT:Ljava/lang/String; = "save_or_export"

.field public static final INTENTION_EXPORT:I = 0x1

.field public static final INTENTION_SAVE:I = 0x0

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contact_uri"

.field private static final LOADER_ARG_CONTACT_URI:Ljava/lang/String; = "contact_uri"

.field private static final LOADER_ID_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InsertGalContactActivity"

.field private static final TEMPORARY_ACCOUNT_NAME:Ljava/lang/String; = "Temporary Account"

.field private static final TEMPORARY_ACCOUNT_TYPE:Ljava/lang/String; = "will.be.deleted.automatically"


# instance fields
.field private mActionAfterSave:I

.field private mContactData:Lcom/android/contacts/common/model/Contact;

.field private mContactUri:Landroid/net/Uri;

.field private final mLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;)Lcom/android/contacts/common/model/Contact;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;Lcom/android/contacts/common/model/Contact;)Lcom/android/contacts/common/model/Contact;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    .line 96
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->mLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 55
    return-void
.end method


# virtual methods
.method public onContactLoaded(Lcom/android/contacts/common/model/Contact;)V
    .locals 3
    .param p1, "contact"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 140
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->mActionAfterSave:I

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;-><init>(Landroid/app/Activity;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/common/model/Contact;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    return-void
.end method

.method public onContactNotFound()V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->finish()V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 81
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "save_or_export"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->mActionAfterSave:I

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->mContactUri:Landroid/net/Uri;

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->mContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "contact_uri"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->mLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 80
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    return-void
.end method
