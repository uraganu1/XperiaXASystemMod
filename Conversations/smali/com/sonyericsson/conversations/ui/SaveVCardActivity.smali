.class public Lcom/sonyericsson/conversations/ui/SaveVCardActivity;
.super Landroid/app/Activity;
.source "SaveVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;,
        Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;,
        Lcom/sonyericsson/conversations/ui/SaveVCardActivity$2;,
        Lcom/sonyericsson/conversations/ui/SaveVCardActivity$3;
    }
.end annotation


# instance fields
.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConfirmSaveDialogForTest:Landroid/app/AlertDialog;

.field private mContact:Lcom/android/vcard/VCardEntry;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Lcom/android/vcard/VCardEntry;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContact:Lcom/android/vcard/VCardEntry;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mConfirmSaveDialogForTest:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Lcom/android/vcard/VCardEntry;)Lcom/android/vcard/VCardEntry;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContact:Lcom/android/vcard/VCardEntry;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->createDialogMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    new-instance v0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;-><init>(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 106
    new-instance v0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$2;-><init>(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 117
    new-instance v0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$3;-><init>(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 32
    return-void
.end method

.method private createDialogMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 134
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContact:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "contactName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    const v3, 0x7f0b0093

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "message":Ljava/lang/String;
    return-object v1
.end method

.method private getVCardDetailsAndShowDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 47
    .local v0, "vCardUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->finish()V

    .line 49
    return-void

    .line 51
    :cond_0
    new-instance v1, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;-><init>(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->requestWindowFeature(I)Z

    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->getVCardDetailsAndShowDialog()V

    .line 39
    return-void
.end method
