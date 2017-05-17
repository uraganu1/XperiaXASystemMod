.class public Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "RecipientsEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentRecipient:Ljava/lang/CharSequence;

.field mFocusOn:Z

.field mSpanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState$1;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 231
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 244
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mSpanList:Ljava/util/List;

    .line 235
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mFocusOn:Z

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 246
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mFocusOn:Z

    .line 250
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->currentRecipient:Ljava/lang/CharSequence;

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->currentRecipient:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->currentRecipient:Ljava/lang/CharSequence;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mSpanList:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 243
    return-void

    .line 248
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mFocusOn:Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mSpanList:Ljava/util/List;

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mFocusOn:Z

    .line 239
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "RecipientsEditor::SavedState{ spanlist#="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mSpanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mSpanList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 270
    const-string/jumbo v2, ", #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mSpanList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get1(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 259
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 260
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mFocusOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->currentRecipient:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->mSpanList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 258
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SavedState;->currentRecipient:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
