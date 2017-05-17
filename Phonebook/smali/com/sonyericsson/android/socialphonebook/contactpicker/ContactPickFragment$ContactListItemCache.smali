.class final Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;
.super Ljava/lang/Object;
.source "ContactPickFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContactListItemCache"
.end annotation


# instance fields
.field private mDataView:Landroid/widget/TextView;

.field private mTypeView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;->mTypeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;->mDataView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;->mTypeView:Landroid/widget/TextView;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;-><init>()V

    return-void
.end method
