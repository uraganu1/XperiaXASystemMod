.class Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mHasYear:Z

.field private final mMonth:I

.field private final mYear:I

.field private final mYearOptional:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 371
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState$1;-><init>()V

    .line 370
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 306
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mYear:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mMonth:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mDay:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mHasYear:Z

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mYearOptional:Z

    .line 330
    return-void

    :cond_0
    move v0, v2

    .line 335
    goto :goto_0

    :cond_1
    move v1, v2

    .line 336
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIZZ)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "hasYear"    # Z
    .param p6, "yearOptional"    # Z

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 320
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mYear:I

    .line 321
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mMonth:I

    .line 322
    iput p4, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mDay:I

    .line 323
    iput-boolean p5, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mHasYear:Z

    .line 324
    iput-boolean p6, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mYearOptional:Z

    .line 318
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIZZLcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "hasYear"    # Z
    .param p6, "yearOptional"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZZ)V

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mYear:I

    return v0
.end method

.method public hasYear()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mHasYear:Z

    return v0
.end method

.method public isYearOptional()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mYearOptional:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 362
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mHasYear:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$SavedState;->mYearOptional:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    return-void

    :cond_0
    move v0, v2

    .line 365
    goto :goto_0

    :cond_1
    move v1, v2

    .line 366
    goto :goto_1
.end method
