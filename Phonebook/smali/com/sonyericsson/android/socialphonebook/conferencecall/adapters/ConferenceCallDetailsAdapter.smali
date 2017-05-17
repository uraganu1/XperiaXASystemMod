.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConferenceCallDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT_PATTERN:Ljava/lang/String; = "EEEE HH:mm"


# instance fields
.field private mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 46
    invoke-static {p1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 42
    return-void
.end method


# virtual methods
.method public getCallDateAndDuration()Ljava/lang/String;
    .locals 6

    .prologue
    .line 110
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    if-nez v3, :cond_0

    .line 111
    const-string/jumbo v3, ""

    return-object v3

    .line 113
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "EEEE HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "dateString":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mContext:Landroid/content/Context;

    .line 116
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->getDuration()J

    move-result-wide v4

    .line 115
    invoke-static {v3, v4, v5}, Lcom/android/contacts/util/DateUtils;->formatDuration(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "duration":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getConferenceCallData()Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->getNumberOfParticipants()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 76
    if-nez p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040030

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;

    invoke-direct {v8, p2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 80
    .local v8, "holder":Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v2}, Landroid/widget/QuickContactBadge;->setEnabled(Z)V

    .line 81
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;

    move-result-object v7

    .line 86
    .local v7, "data":Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;
    const-wide/16 v4, -0x1

    .line 87
    .local v4, "contactId":J
    iget-object v0, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->contactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    iget v1, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->phoneNumberType:I

    .line 88
    invoke-static {v0, v1, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 90
    .local v9, "label":Ljava/lang/CharSequence;
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->secondRowLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->number:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->contactUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 100
    .end local v9    # "label":Ljava/lang/CharSequence;
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    iget-object v1, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    iget-wide v2, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->photoId:J

    .line 101
    sget-object v6, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 100
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 103
    return-object p2

    .line 83
    .end local v4    # "contactId":J
    .end local v7    # "data":Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;
    .end local v8    # "holder":Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;

    .restart local v8    # "holder":Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;
    goto :goto_0

    .line 96
    .restart local v4    # "contactId":J
    .restart local v7    # "data":Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;
    :cond_1
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->secondRowLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->contactUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConferenceCallData(Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;)V
    .locals 0
    .param p1, "conferenceCallData"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    .line 49
    return-void
.end method
