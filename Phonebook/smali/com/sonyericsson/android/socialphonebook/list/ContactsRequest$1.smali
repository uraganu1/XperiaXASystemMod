.class final Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$1;
.super Ljava/lang/Object;
.source "ContactsRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;
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
        "Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$1;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 170
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;-><init>()V

    .line 171
    .local v1, "request":Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->-set11(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Z)Z

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->-set0(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;I)I

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->-set8(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Landroid/content/Intent;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->-set10(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->-set9(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Z)Z

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->-set7(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->-set5(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Z)Z

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->-set6(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Z)Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_4
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->-set4(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Z)Z

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->-set2(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Landroid/net/Uri;)Landroid/net/Uri;

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->-set1(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Landroid/net/Uri;)Landroid/net/Uri;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    :goto_5
    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->-set3(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Z)Z

    .line 183
    return-object v1

    :cond_0
    move v2, v4

    .line 171
    goto :goto_0

    :cond_1
    move v2, v4

    .line 175
    goto :goto_1

    :cond_2
    move v2, v4

    .line 177
    goto :goto_2

    :cond_3
    move v2, v4

    .line 178
    goto :goto_3

    :cond_4
    move v2, v4

    .line 179
    goto :goto_4

    :cond_5
    move v3, v4

    .line 182
    goto :goto_5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 164
    new-array v0, p1, [Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$1;->newArray(I)[Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    move-result-object v0

    return-object v0
.end method
