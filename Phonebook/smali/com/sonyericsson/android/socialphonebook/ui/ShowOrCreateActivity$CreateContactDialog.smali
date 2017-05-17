.class public Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;
.super Landroid/app/DialogFragment;
.source "ShowOrCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateContactDialog"
.end annotation


# static fields
.field private static final DESCRIPTION_KEY:Ljava/lang/String; = "descriptionKey"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "extrasKey"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/os/Bundle;Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;
    .locals 1
    .param p0, "createExtras"    # Landroid/os/Bundle;
    .param p1, "createDescription"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;->newInstance(Landroid/os/Bundle;Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;->TAG:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static newInstance(Landroid/os/Bundle;Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;
    .locals 3
    .param p0, "createExtras"    # Landroid/os/Bundle;
    .param p1, "createDescription"    # Ljava/lang/String;

    .prologue
    .line 264
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;-><init>()V

    .line 265
    .local v1, "dialog":Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "extrasKey"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 267
    const-string/jumbo v2, "descriptionKey"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;->setArguments(Landroid/os/Bundle;)V

    .line 270
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 277
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 281
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 274
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "extrasKey"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 287
    .local v2, "createExtras":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "descriptionKey"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "createDescription":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v3, "createIntent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 292
    const-string/jumbo v5, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 295
    const/4 v7, 0x0

    aput-object v1, v6, v7

    const v7, 0x7f0900ac

    .line 294
    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 298
    .local v0, "activity":Landroid/app/Activity;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 299
    const v6, 0x7f0900ab

    .line 298
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 300
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$1;

    invoke-direct {v6, p0, v3, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;Landroid/content/Intent;Landroid/app/Activity;)V

    const v7, 0x104000a

    .line 298
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 308
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$2;

    invoke-direct {v6, p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$2;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;Landroid/app/Activity;)V

    const/high16 v7, 0x1040000

    .line 298
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
