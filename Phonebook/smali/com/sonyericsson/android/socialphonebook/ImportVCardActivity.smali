.class public Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "ImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;,
        Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;,
        Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;,
        Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;,
        Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;,
        Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;,
        Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImportVCardActivity"

.field private static final REQUEST_CODE_STORAGE_PERMISSION:I = 0x1

.field public static final VCARD_VERSION_AUTO_DETECT:I = 0x0

.field public static final VCARD_VERSION_V21:I = 0x2

.field public static final VCARD_VERSION_V30:I = 0x1


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAllVCardFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;",
            ">;"
        }
    .end annotation
.end field

.field protected mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

.field private mConnection:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;

.field private mDocumentUri:Landroid/net/Uri;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field protected mIsFromNfc:Z

.field private mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

.field private mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

.field private mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

.field private mStoragePath:Ljava/lang/String;

.field private mVCardReadThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

.field private mVCardScanThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mConnection:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Lcom/android/contacts/common/vcard/VCardImportExportListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mVCardReadThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mVCardScanThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Lcom/android/contacts/common/vcard/VCardImportExportListener;)Lcom/android/contacts/common/vcard/VCardImportExportListener;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    return-object p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -set4(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;)Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mVCardReadThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "storagePath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->isSameStorageType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "selectedVCardFileList"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->importMultipleVCardFromExternalStorage(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;[Landroid/net/Uri;)V
    .locals 0
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->startVCardSelectAndImport()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    .line 120
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mStoragePath:Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    .line 97
    return-void
.end method

.method private destroyDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 936
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 940
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    .line 935
    :cond_1
    return-void
.end method

.method private getReadingVCardDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 471
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    if-nez v2, :cond_0

    .line 472
    const v2, 0x7f0902b7

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "title":Ljava/lang/String;
    const v2, 0x7f090299

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "message":Ljava/lang/String;
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    .line 475
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 478
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mVCardReadThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 479
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->startVCardService()V

    .line 481
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;

    return-object v2
.end method

.method private getVCardFileSelectDialog(Z)Landroid/app/Dialog;
    .locals 18
    .param p1, "multipleSelect"    # Z

    .prologue
    .line 739
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    if-nez v13, :cond_0

    .line 740
    const/4 v13, 0x0

    return-object v13

    .line 743
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    .line 744
    .local v10, "size":I
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v9, v0, v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Z)V

    .line 746
    .local v9, "listener":Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardSelectedListener;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 747
    const v14, 0x7f090297

    .line 746
    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 748
    const v14, 0x104000a

    .line 746
    invoke-virtual {v13, v14, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 749
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    .line 746
    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 750
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    const/high16 v15, 0x1040000

    .line 746
    invoke-virtual {v13, v15, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 752
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    new-array v8, v10, [Ljava/lang/CharSequence;

    .line 753
    .local v8, "items":[Ljava/lang/CharSequence;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 754
    .local v4, "dateFormat":Ljava/text/DateFormat;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_1

    .line 755
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;

    .line 756
    .local v12, "vcardFile":Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 757
    .local v11, "stringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 758
    const/16 v13, 0xa

    invoke-virtual {v11, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 759
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 764
    .local v7, "indexToBeSpanned":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/util/Date;

    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;->getLastModified()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 763
    invoke-virtual {v11, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 766
    new-instance v13, Landroid/text/style/RelativeSizeSpan;

    const v14, 0x3f333333    # 0.7f

    invoke-direct {v13, v14}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    .line 767
    const/16 v15, 0x21

    .line 765
    invoke-virtual {v11, v13, v7, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 768
    aput-object v11, v8, v6

    .line 754
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 770
    .end local v7    # "indexToBeSpanned":I
    .end local v11    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v12    # "vcardFile":Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;
    :cond_1
    if-eqz p1, :cond_3

    .line 771
    const/4 v13, 0x0

    check-cast v13, [Z

    invoke-virtual {v3, v8, v13, v9}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 772
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 773
    .local v5, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 774
    const/4 v13, -0x1

    invoke-virtual {v5, v13}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 775
    .local v2, "btn":Landroid/widget/Button;
    if-eqz v2, :cond_2

    .line 776
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 778
    :cond_2
    return-object v5

    .line 780
    .end local v2    # "btn":Landroid/widget/Button;
    .end local v5    # "dialog":Landroid/app/AlertDialog;
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v3, v8, v13, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 782
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    return-object v13
.end method

.method private importMultipleVCardFromExternalStorage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "selectedVCardFileList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 463
    .local v1, "size":I
    new-array v2, v1, [Landroid/net/Uri;

    .line 464
    .local v2, "uris":[Landroid/net/Uri;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 465
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 461
    return-void
.end method

.method private importVCard([Landroid/net/Uri;)V
    .locals 1
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 701
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;[Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 700
    return-void
.end method

.method private isSameStorageType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "storagePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 981
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 982
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getExternalStorageType(Landroid/content/Context;Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v1

    .line 983
    .local v1, "subPathType":Landroid/os/storage/StorageManager$StorageType;
    invoke-static {p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getExternalStorageType(Landroid/content/Context;Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v0

    .line 987
    .local v0, "storageType":Landroid/os/storage/StorageManager$StorageType;
    sget-object v3, Landroid/os/storage/StorageManager$StorageType;->UNKNOWN:Landroid/os/storage/StorageManager$StorageType;

    if-ne v3, v1, :cond_0

    .line 988
    move-object v1, v0

    .line 991
    :cond_0
    if-ne v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 994
    .end local v0    # "storageType":Landroid/os/storage/StorageManager$StorageType;
    .end local v1    # "subPathType":Landroid/os/storage/StorageManager$StorageType;
    :cond_2
    return v2
.end method

.method private startVCardSelectAndImport()V
    .locals 3

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->importMultipleVCardFromExternalStorage(Ljava/util/List;)V

    .line 690
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;

    const v2, 0x7f0e0012

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;

    const v2, 0x7f0e0011

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private startVCardService()V
    .locals 4

    .prologue
    .line 485
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mConnection:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;

    .line 487
    const-string/jumbo v1, "ImportVCardActivity"

    const-string/jumbo v2, "Bind to VCardService."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 491
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mConnection:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 484
    return-void
.end method


# virtual methods
.method protected checkFinishingAndShowDialog(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 970
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->showDialog(I)V

    .line 968
    :cond_0
    return-void
.end method

.method protected importOneVCardFromBT(Landroid/net/Uri;Landroid/accounts/Account;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 714
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mAccount:Landroid/accounts/Account;

    .line 717
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mDocumentUri:Landroid/net/Uri;

    .line 718
    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 720
    new-array v0, v3, [Landroid/net/Uri;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mDocumentUri:Landroid/net/Uri;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 713
    :goto_0
    return-void

    .line 722
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0, v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 787
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 788
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 789
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 791
    .local v3, "isFromNfc":Z
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 792
    return-void

    .line 797
    :cond_0
    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 798
    return-void

    .line 800
    :cond_1
    if-eqz v2, :cond_7

    .line 801
    const-string/jumbo v6, "account_name"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "accountName":Ljava/lang/String;
    const-string/jumbo v6, "account_type"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "accountType":Ljava/lang/String;
    const-string/jumbo v6, "external_storage_path"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mStoragePath:Ljava/lang/String;

    .line 804
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mStoragePath:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 805
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getDefaultExternalStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mStoragePath:Ljava/lang/String;

    .line 807
    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 809
    .local v5, "vCardURI":Landroid/net/Uri;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 786
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v5    # "vCardURI":Landroid/net/Uri;
    :cond_3
    :goto_0
    return-void

    .line 810
    .restart local v0    # "accountName":Ljava/lang/String;
    .restart local v1    # "accountType":Ljava/lang/String;
    .restart local v5    # "vCardURI":Landroid/net/Uri;
    :cond_4
    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mAccount:Landroid/accounts/Account;

    .line 812
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 813
    move-object v4, v5

    .line 814
    .local v4, "targetUri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    .line 816
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 819
    :cond_5
    if-eqz v4, :cond_3

    .line 821
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/net/Uri;

    .line 822
    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 821
    invoke-direct {p0, v6}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    goto :goto_0

    .line 827
    .end local v4    # "targetUri":Landroid/net/Uri;
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->startImportVCardFromExternalStorage()V

    goto :goto_0

    .line 831
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v5    # "vCardURI":Landroid/net/Uri;
    :cond_7
    const-string/jumbo v6, "ImportVCardActivity"

    const-string/jumbo v7, "intent does not exist"

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "resId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x104000a

    .line 838
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mStoragePath:Ljava/lang/String;

    invoke-static {p0, v3, p1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getErrorMessage(Landroid/content/Context;Ljava/lang/String;I)Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    move-result-object v2

    .line 840
    .local v2, "msg":Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;
    packed-switch p1, :pswitch_data_0

    .line 912
    :pswitch_0
    return-object v4

    .line 842
    :pswitch_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_0

    .line 843
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    .line 844
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->getMessageTitleId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 845
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->getMessageBodyId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 847
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 848
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mVCardScanThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 849
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 862
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object v3

    .line 865
    :pswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 866
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->getMessageTitleId()I

    move-result v4

    .line 865
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 867
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->getMessageBodyId()I

    move-result v4

    .line 865
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 868
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    .line 865
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 869
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    .line 865
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 870
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 873
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 874
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->getMessageTitleId()I

    move-result v4

    .line 873
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 875
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->getMessageBodyId()I

    move-result v4

    .line 873
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 876
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    .line 873
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 877
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    .line 873
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 878
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 881
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_4
    invoke-direct {p0, v7}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    return-object v3

    .line 884
    :pswitch_5
    invoke-direct {p0, v6}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    return-object v3

    .line 887
    :pswitch_6
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getReadingVCardDialog()Landroid/app/Dialog;

    move-result-object v3

    return-object v3

    .line 890
    :pswitch_7
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 891
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->getMessageTitleId()I

    move-result v4

    .line 890
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 892
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->getMessageBodyId()I

    move-result v4

    .line 890
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 893
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    .line 890
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 894
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    .line 890
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 895
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 898
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_8
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    .line 899
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 900
    const-string/jumbo v3, "ImportVCardActivity"

    const-string/jumbo v4, "Error message is null while it must not."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->getMessageBodyId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 903
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 904
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->getMessageTitleId()I

    move-result v4

    .line 903
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 906
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    .line 903
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 907
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mCancelListener:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;

    .line 903
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 908
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e000d
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 917
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 918
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mConnection:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mConnection:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 921
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->destroyDialogs()V

    .line 922
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mVCardReadThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mVCardReadThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->cancel()V

    .line 924
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mVCardReadThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mVCardScanThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;

    if-eqz v0, :cond_3

    .line 927
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mVCardScanThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 928
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mVCardScanThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->interrupt()V

    .line 930
    :cond_2
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mVCardScanThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;

    .line 932
    :cond_3
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onDestroy()V

    .line 916
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 730
    if-ne p1, v1, :cond_0

    .line 731
    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 732
    new-array v0, v1, [Landroid/net/Uri;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mDocumentUri:Landroid/net/Uri;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 729
    :goto_0
    return-void

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    goto :goto_0
.end method

.method public startImportVCardFromExternalStorage()V
    .locals 3

    .prologue
    const v2, 0x7f0e000e

    .line 954
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mStoragePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 955
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mStoragePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 956
    .local v0, "externalStorageDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 957
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/io/File;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mVCardScanThread:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;

    .line 961
    const v1, 0x7f0e000d

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->checkFinishingAndShowDialog(I)V

    .line 952
    .end local v0    # "externalStorageDirectory":Ljava/io/File;
    :goto_0
    return-void

    .line 958
    .restart local v0    # "externalStorageDirectory":Ljava/io/File;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->checkFinishingAndShowDialog(I)V

    goto :goto_0

    .line 964
    .end local v0    # "externalStorageDirectory":Ljava/io/File;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->checkFinishingAndShowDialog(I)V

    goto :goto_0
.end method
