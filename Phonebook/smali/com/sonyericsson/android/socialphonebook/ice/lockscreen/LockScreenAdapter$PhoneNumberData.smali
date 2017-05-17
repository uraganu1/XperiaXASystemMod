.class public Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;
.super Ljava/lang/Object;
.source "LockScreenAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/sonyericsson/android/socialphonebook/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumberData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/sonyericsson/android/socialphonebook/Collapser$Collapsible",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneNumberType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData$1;-><init>()V

    .line 71
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->mPhoneNumber:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->mPhoneNumberType:I

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "phoneType"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->mPhoneNumber:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->mPhoneNumberType:I

    .line 47
    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;)V
    .locals 0
    .param p1, "entry"    # Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;

    .prologue
    .line 91
    return-void
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;

    .end local p1    # "entry":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->collapseWith(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumberType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->mPhoneNumberType:I

    return v0
.end method

.method public shouldCollapseWith(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;)Z
    .locals 2
    .param p1, "entry"    # Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;

    .prologue
    .line 97
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->mPhoneNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const/4 v0, 0x1

    return v0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->mPhoneNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->shouldCollapsePhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "entry"    # Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;

    .end local p1    # "entry":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->shouldCollapseWith(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->mPhoneNumberType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method
