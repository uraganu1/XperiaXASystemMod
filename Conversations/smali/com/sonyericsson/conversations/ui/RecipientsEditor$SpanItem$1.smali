.class final Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem$1;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
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
        "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 220
    new-instance v1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 225
    new-array v0, p1, [Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem$1;->newArray(I)[Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    move-result-object v0

    return-object v0
.end method
