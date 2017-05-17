.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;
.super Ljava/lang/Object;
.source "CollapsibleNumberData.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/Collapser$Collapsible;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/socialphonebook/Collapser$Collapsible",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrandName:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData$1;-><init>()V

    .line 65
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->number:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->mBrandName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "brand"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->number:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->mBrandName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;)V
    .locals 0
    .param p1, "data"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;

    .prologue
    .line 50
    return-void
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->collapseWith(Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCollapseWith(Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;)Z
    .locals 3
    .param p1, "data"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->mBrandName:Ljava/lang/String;

    .line 45
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->arePhoneNumbersEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->shouldCollapseWith(Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->mBrandName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void
.end method
