.class Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;
.super Ljava/lang/Object;
.source "SimPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimPickerListItem"
.end annotation


# instance fields
.field private final mDrawableId:I

.field private final mSimNumber:Ljava/lang/String;

.field private final mStringId:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;->mDrawableId:I

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;->mSimNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;->mStringId:I

    return v0
.end method

.method public constructor <init>(IILandroid/content/Context;I)V
    .locals 1
    .param p1, "drawableId"    # I
    .param p2, "stringId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "slotId"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;->mDrawableId:I

    .line 143
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;->mStringId:I

    .line 144
    invoke-static {p3, p4}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getLine1Number(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;->mSimNumber:Ljava/lang/String;

    .line 141
    return-void
.end method
