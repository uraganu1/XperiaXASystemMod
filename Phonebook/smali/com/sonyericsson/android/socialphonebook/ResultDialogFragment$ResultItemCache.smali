.class final Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;
.super Ljava/lang/Object;
.source "ResultDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResultItemCache"
.end annotation


# instance fields
.field private mNameBuffer:Landroid/database/CharArrayBuffer;

.field private mNameView:Landroid/widget/TextView;

.field private mPhotoView:Landroid/widget/QuickContactBadge;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)Landroid/database/CharArrayBuffer;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->mNameBuffer:Landroid/database/CharArrayBuffer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->mNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)Landroid/widget/QuickContactBadge;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->mPhotoView:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->mNameView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;Landroid/widget/QuickContactBadge;)Landroid/widget/QuickContactBadge;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->mPhotoView:Landroid/widget/QuickContactBadge;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->mNameBuffer:Landroid/database/CharArrayBuffer;

    .line 196
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;-><init>()V

    return-void
.end method
