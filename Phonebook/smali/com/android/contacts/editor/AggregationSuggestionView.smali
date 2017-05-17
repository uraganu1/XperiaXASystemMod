.class public Lcom/android/contacts/editor/AggregationSuggestionView;
.super Landroid/widget/LinearLayout;
.source "AggregationSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
    }
.end annotation


# instance fields
.field private mContactId:J

.field private mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

.field private mLookupKey:Ljava/lang/String;

.field private mNewContact:Z

.field private mRawContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 78
    return-void
.end method

.method private canEditSuggestedContact()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 119
    iget-boolean v6, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mNewContact:Z

    if-nez v6, :cond_0

    .line 120
    return v7

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 124
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "rawContact$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    .line 125
    .local v3, "rawContact":Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    iget-object v0, v3, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->accountType:Ljava/lang/String;

    .line 126
    .local v0, "accountType":Ljava/lang/String;
    iget-object v2, v3, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->dataSet:Ljava/lang/String;

    .line 127
    .local v2, "dataSet":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 128
    return v8

    .line 130
    :cond_2
    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v5

    .line 131
    .local v5, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    return v8

    .line 136
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v2    # "dataSet":Ljava/lang/String;
    .end local v3    # "rawContact":Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    .end local v5    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_3
    return v7
.end method


# virtual methods
.method public bindSuggestion(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;)V
    .locals 10
    .param p1, "suggestion"    # Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    .prologue
    .line 87
    iget-wide v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactId:J

    iput-wide v2, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    .line 88
    iget-object v0, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->lookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mLookupKey:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 90
    const v0, 0x7f0e0048

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 91
    .local v1, "photo":Landroid/widget/ImageView;
    iget-object v0, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    iget-object v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    array-length v2, v2

    const/4 v3, 0x0

    .line 92
    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    :goto_0
    const v0, 0x7f0e0046

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 101
    .local v9, "name":Landroid/widget/TextView;
    iget-object v0, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->name:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v0, 0x7f0e0047

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 104
    .local v7, "data":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 105
    .local v8, "dataText":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 106
    iget-object v8, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    .line 112
    .end local v8    # "dataText":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void

    .line 95
    .end local v7    # "data":Landroid/widget/TextView;
    .end local v9    # "name":Landroid/widget/TextView;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    .line 96
    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    .line 97
    sget-object v6, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 96
    const-wide/16 v2, 0x0

    .line 95
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V

    goto :goto_0

    .line 107
    .restart local v7    # "data":Landroid/widget/TextView;
    .restart local v8    # "dataText":Ljava/lang/String;
    .restart local v9    # "name":Landroid/widget/TextView;
    :cond_2
    iget-object v0, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 108
    iget-object v8, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    .local v8, "dataText":Ljava/lang/String;
    goto :goto_1

    .line 109
    .local v8, "dataText":Ljava/lang/String;
    :cond_3
    iget-object v0, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 110
    iget-object v8, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    .local v8, "dataText":Ljava/lang/String;
    goto :goto_1
.end method

.method public handleItemClickEvent()Z
    .locals 7

    .prologue
    .line 144
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->canEditSuggestedContact()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    iget-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mLookupKey:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionView$Listener;->onEditAction(Landroid/net/Uri;)V

    .line 154
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 148
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 149
    .local v2, "rawContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rawContact$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    .line 150
    .local v0, "rawContact":Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    iget-wide v4, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->rawContactId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    .end local v0    # "rawContact":Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    invoke-interface {v3, v4, v5, v2}, Lcom/android/contacts/editor/AggregationSuggestionView$Listener;->onJoinAction(JLjava/util/List;)V

    goto :goto_0

    .line 156
    .end local v1    # "rawContact$iterator":Ljava/util/Iterator;
    .end local v2    # "rawContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public setListener(Lcom/android/contacts/editor/AggregationSuggestionView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    .line 139
    return-void
.end method

.method public setNewContact(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mNewContact:Z

    .line 82
    return-void
.end method
