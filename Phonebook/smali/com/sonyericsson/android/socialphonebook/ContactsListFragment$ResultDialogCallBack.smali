.class final Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;
.super Ljava/lang/Object;
.source "ContactsListFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResultDialogCallBack"
.end annotation


# instance fields
.field private mButtonMode:I

.field private mContext:Landroid/app/Activity;

.field private mFilePath:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mResultDialogMode:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mResultDialogMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mButtonMode:I

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mContext:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic -set4(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mResultDialogMode:I

    return p1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1781
    const/4 v0, 0x0

    return v0
.end method

.method public getButtonMode()I
    .locals 1

    .prologue
    .line 1717
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mButtonMode:I

    return v0
.end method

.method public getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 1764
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNegativeResource()I
    .locals 2

    .prologue
    .line 1734
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mResultDialogMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1735
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mButtonMode:I

    packed-switch v0, :pswitch_data_0

    .line 1740
    const v0, 0x1040009

    return v0

    .line 1737
    :pswitch_0
    const v0, 0x1040013

    return v0

    .line 1745
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 1735
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 2

    .prologue
    .line 1750
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mResultDialogMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1751
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;)V

    return-object v0

    .line 1759
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositiveResource()I
    .locals 1

    .prologue
    .line 1722
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mResultDialogMode:I

    packed-switch v0, :pswitch_data_0

    .line 1729
    const/4 v0, -0x1

    return v0

    .line 1724
    :pswitch_0
    const v0, 0x104000a

    return v0

    .line 1726
    :pswitch_1
    const v0, 0x1040013

    return v0

    .line 1722
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startActivityByIntent()V
    .locals 4

    .prologue
    .line 1768
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mFilePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 1769
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Failed start activity by NullPointException."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    return-void

    .line 1768
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mContext:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1773
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1774
    .local v0, "createFile":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1775
    .local v1, "uriFilePath":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1776
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1767
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 1786
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mButtonMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1787
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mResultDialogMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1785
    return-void
.end method
