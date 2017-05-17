.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ParticipantsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;,
        Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;,
        Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLayoutId:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mParticipantRemovedListener:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;

.field private final mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field private final mRemoveParticipantClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;)Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->mParticipantRemovedListener:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p4, "participantRemovedListener"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;",
            ">;",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 47
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$1;-><init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;)V

    .line 46
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->mRemoveParticipantClickListener:Landroid/view/View$OnClickListener;

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->mContext:Landroid/content/Context;

    .line 73
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->mLayoutId:I

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 75
    invoke-static {p1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 76
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->mParticipantRemovedListener:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "participantRemovedListener"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;

    .prologue
    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "participantRemovedListener"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;",
            ">;",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;>;"
    const v0, 0x7f040030

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    if-nez p2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->mLayoutId:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 84
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;

    invoke-direct {v8, p2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 85
    .local v8, "holder":Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->removeIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->mRemoveParticipantClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;

    .line 92
    .local v7, "data":Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    iget-object v1, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->contactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 95
    iget-object v0, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->contactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    iget v1, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->phoneNumberType:I

    .line 96
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 98
    .local v9, "label":Ljava/lang/CharSequence;
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->secondRowLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->number:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->contactUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 109
    .end local v9    # "label":Ljava/lang/CharSequence;
    .local v4, "contactId":J
    :goto_1
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->removeIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    iget-object v1, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    iget-wide v2, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->photoId:J

    .line 112
    sget-object v6, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 111
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 114
    return-object p2

    .line 88
    .end local v4    # "contactId":J
    .end local v7    # "data":Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;
    .end local v8    # "holder":Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;

    .restart local v8    # "holder":Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;
    goto :goto_0

    .line 104
    .restart local v7    # "data":Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;
    :cond_1
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->secondRowLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const-wide/16 v4, -0x1

    .restart local v4    # "contactId":J
    goto :goto_1
.end method
