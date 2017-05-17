.class public Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;
.super Landroid/widget/ArrayAdapter;
.source "JoynContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$JoynContactAdapterListener;,
        Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContactIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDuplicateContactIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$JoynContactAdapterListener;

.field private mMaxRecipients:I

.field private mNbrOfNewlyAddedContacts:I

.field private final mPhoneTypeLabels:[Ljava/lang/CharSequence;

.field private final mPickedContacts:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mNbrOfNewlyAddedContacts:I

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mPickedContacts:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mNbrOfNewlyAddedContacts:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->notifyListenerNumberOfPickedChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$JoynContactAdapterListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$JoynContactAdapterListener;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mPickedContacts:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mContactIds:Ljava/util/Set;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mDuplicateContactIds:Ljava/util/Set;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mMaxRecipients:I

    .line 57
    iput-object p2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mListener:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$JoynContactAdapterListener;

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mPhoneTypeLabels:[Ljava/lang/CharSequence;

    .line 55
    return-void
.end method

.method private addToContactIdLists(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V
    .locals 4
    .param p1, "contactNumber"    # Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->getContactId()J

    move-result-wide v0

    .line 227
    .local v0, "id":J
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mContactIds:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mDuplicateContactIds:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->isPreselected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mPickedContacts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-direct {p0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->notifyListenerNumberOfPickedChanged()V

    .line 225
    :cond_1
    return-void
.end method

.method private getTypeDisplayLabel(I)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 97
    if-gez p1, :cond_0

    .line 98
    const-string/jumbo v3, ""

    return-object v3

    .line 100
    :cond_0
    const/4 v0, 0x1

    .line 102
    .local v0, "defaultType":I
    const-string/jumbo v2, ""

    .line 104
    .local v2, "typeLabel":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mPhoneTypeLabels:[Ljava/lang/CharSequence;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 108
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mPhoneTypeLabels:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private notifyListenerNumberOfPickedChanged()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mListener:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$JoynContactAdapterListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mListener:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$JoynContactAdapterListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mPickedContacts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mNbrOfNewlyAddedContacts:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$JoynContactAdapterListener;->onNumberOfPickedChanged(II)V

    .line 149
    :cond_0
    return-void
.end method

.method private reloadContactIdLists()V
    .locals 3

    .prologue
    .line 217
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mDuplicateContactIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 218
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mContactIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 219
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 220
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .line 221
    .local v0, "contact":Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->addToContactIdLists(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "contact":Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;
    :cond_0
    return-void
.end method

.method private setupCheckbox(Landroid/view/View;Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "contact"    # Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .prologue
    const/4 v3, 0x0

    .line 112
    const v2, 0x7f0d0018

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 113
    .local v0, "checkBox":Landroid/widget/CheckedTextView;
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mPickedContacts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 114
    .local v1, "isChecked":Z
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 115
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->isPreselected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 123
    :goto_0
    new-instance v2, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;-><init>(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->isMaxRecipients()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    .line 120
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setupContactBadge(Landroid/view/View;Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "contact"    # Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .prologue
    .line 79
    const v4, 0x7f0d0016

    .line 78
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 80
    .local v0, "badge":Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    const v4, 0x7f0d0017

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 81
    .local v2, "joynIndicator":Landroid/widget/ImageView;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getBrandingPolicy()Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;->getJoynContactIndicatorVisibility()I

    move-result v1

    .line 82
    .local v1, "indicatorVisibility":I
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    new-instance v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 84
    .local v3, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;)V

    .line 77
    return-void
.end method

.method private setupContactLabel(Landroid/view/View;Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "contact"    # Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .prologue
    .line 89
    const v2, 0x7f0d0019

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    .local v1, "nameView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mDuplicateContactIds:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->getContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->getContactName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->getPhoneType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->getTypeDisplayLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "contactLabel":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void

    .line 91
    .end local v0    # "contactLabel":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->getContactName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contactLabel":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V
    .locals 0
    .param p1, "contactNumber"    # Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->addToContactIdLists(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V

    .line 185
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .param p1, "contactNumber"    # Ljava/lang/Object;

    .prologue
    .line 183
    check-cast p1, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .end local p1    # "contactNumber":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->add(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "contactNumbers":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contactNumber$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .line 191
    .local v0, "contactNumber":Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->addToContactIdLists(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V

    goto :goto_0

    .line 193
    .end local v0    # "contactNumber":Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 189
    return-void
.end method

.method public varargs addAll([Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V
    .locals 3
    .param p1, "contactNumbers"    # [Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .prologue
    .line 198
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 199
    .local v0, "contactNumber":Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->addToContactIdLists(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "contactNumber":Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public bridge synthetic addAll([Ljava/lang/Object;)V
    .locals 0
    .param p1, "contactNumbers"    # [Ljava/lang/Object;

    .prologue
    .line 197
    check-cast p1, [Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .end local p1    # "contactNumbers":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->addAll([Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V

    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->reloadContactIdLists()V

    .line 213
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 211
    return-void
.end method

.method public getPickedNumbers()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mPickedContacts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 176
    .local v0, "contacts":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mPickedContacts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mPickedContacts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 64
    move-object v1, p2

    .line 65
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030005

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .line 70
    .local v0, "contact":Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->setupContactBadge(Landroid/view/View;Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V

    .line 71
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->setupContactLabel(Landroid/view/View;Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V

    .line 72
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->setupCheckbox(Landroid/view/View;Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V

    .line 74
    return-object v1
.end method

.method public isMaxRecipients()Z
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mPickedContacts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mMaxRecipients:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V
    .locals 0
    .param p1, "object"    # Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->reloadContactIdLists()V

    .line 207
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 205
    check-cast p1, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->remove(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V

    return-void
.end method

.method public setMaxRecipients(I)V
    .locals 0
    .param p1, "maxRecipients"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->mMaxRecipients:I

    .line 170
    return-void
.end method

.method protected showMaxRecipientsDialog()V
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 158
    .local v0, "acitivity":Landroid/app/Activity;
    new-instance v1, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 159
    .local v1, "convDialog":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    const v2, 0x7f0b0184

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(I)V

    .line 160
    const v2, 0x7f0b0185

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setMessage(I)V

    .line 161
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 162
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 163
    const-string/jumbo v3, "alert-dialog"

    .line 162
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 155
    return-void
.end method
