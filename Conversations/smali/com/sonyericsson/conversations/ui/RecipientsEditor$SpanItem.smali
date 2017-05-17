.class public Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpanItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsImContact:Ljava/lang/Boolean;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mIsImContact:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem$1;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "isImContact"    # Ljava/lang/Boolean;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    .line 177
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mIsImContact:Ljava/lang/Boolean;

    .line 174
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 182
    instance-of v2, p1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 183
    check-cast v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 184
    .local v0, "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    const/4 v1, 0x0

    .line 186
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 189
    .end local v1    # "ret":Z
    :cond_0
    return v1

    .line 191
    .end local v0    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "> isImContact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mIsImContact:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mIsImContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 211
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
