.class public Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountSelectedListener"
.end annotation


# instance fields
.field protected final mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mStoragePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "storagePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    const-string/jumbo v0, "AccountSelectionUtil"

    const-string/jumbo v1, "The size of Account list is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    .line 70
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;->mStoragePath:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 78
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 74
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;->mStoragePath:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil;->-wrap0(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 73
    return-void
.end method
