.class final Lcom/sonymobile/fab/CheckableFrameLayout$SavedState$1;
.super Ljava/lang/Object;
.source "CheckableFrameLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 244
    new-instance v0, Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;-><init>(Landroid/os/Parcel;Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/sonymobile/fab/CheckableFrameLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 249
    new-array v0, p1, [Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/sonymobile/fab/CheckableFrameLayout$SavedState$1;->newArray(I)[Lcom/sonymobile/fab/CheckableFrameLayout$SavedState;

    move-result-object v0

    return-object v0
.end method
