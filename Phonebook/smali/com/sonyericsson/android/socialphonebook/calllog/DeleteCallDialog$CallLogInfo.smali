.class public Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;
.super Ljava/lang/Object;
.source "DeleteCallDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallLogInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCallIds:[I

.field mProtocol:Ljava/lang/String;

.field mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 108
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mUri:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mProtocol:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mCallIds:[I

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "mUri"    # Ljava/lang/String;
    .param p2, "mProtocol"    # Ljava/lang/String;
    .param p3, "callIds"    # [I

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mUri:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mProtocol:Ljava/lang/String;

    .line 116
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mCallIds:[I

    .line 113
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mCallIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 141
    return-void
.end method
