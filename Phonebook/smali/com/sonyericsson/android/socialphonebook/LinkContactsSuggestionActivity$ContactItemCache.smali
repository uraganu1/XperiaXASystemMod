.class final Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;
.super Ljava/lang/Object;
.source "LinkContactsSuggestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContactItemCache"
.end annotation


# instance fields
.field private mAccountView:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mLinkIcon:Landroid/widget/ImageView;

.field private mNameBuffer:Landroid/database/CharArrayBuffer;

.field private mNameView:Landroid/widget/TextView;

.field private mPhotoView:Landroid/widget/QuickContactBadge;

.field private mSubLineView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mAccountView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mLinkIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/database/CharArrayBuffer;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mNameBuffer:Landroid/database/CharArrayBuffer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/QuickContactBadge;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mPhotoView:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mSubLineView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mAccountView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mIconView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mLinkIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mNameView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set4(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/QuickContactBadge;)Landroid/widget/QuickContactBadge;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mPhotoView:Landroid/widget/QuickContactBadge;

    return-object p1
.end method

.method static synthetic -set5(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mSubLineView:Landroid/view/View;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Landroid/database/CharArrayBuffer;

    .line 272
    const/16 v1, 0x80

    .line 271
    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->mNameBuffer:Landroid/database/CharArrayBuffer;

    .line 284
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;-><init>()V

    return-void
.end method
