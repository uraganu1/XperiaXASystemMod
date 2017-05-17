.class public Lcom/sonymobile/android/vcard/VCardEntryConstructor;
.super Ljava/lang/Object;
.source "VCardEntryConstructor.java"

# interfaces
.implements Lcom/sonymobile/android/vcard/VCardInterpreter;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mCurrentEntry:Lcom/sonymobile/android/vcard/VCardEntry;

.field private final mEntryHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "vCard"

    .line 49
    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x40000000    # -2.0f

    .line 63
    invoke-direct {p0, v0, v1, v1}, Lcom/sonymobile/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0, v0}, Lcom/sonymobile/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mEntryStack:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    .line 81
    iput p1, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mVCardType:I

    .line 82
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    .line 83
    return-void
.end method


# virtual methods
.method public addEntryHandler(Lcom/sonymobile/android/vcard/VCardEntryHandler;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/sonymobile/android/vcard/VCardEntry;

    .line 105
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mEntryStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    return-void
.end method

.method public onEntryEnded()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/sonymobile/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardEntry;->consolidateFields()V

    .line 117
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mEntryStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    .line 122
    if-gt v1, v0, :cond_1

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/sonymobile/android/vcard/VCardEntry;

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mEntryStack:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 130
    return-void

    .line 117
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntryHandler;

    .line 118
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/sonymobile/android/vcard/VCardEntry;

    invoke-interface {v0, v2}, Lcom/sonymobile/android/vcard/VCardEntryHandler;->onEntryCreated(Lcom/sonymobile/android/vcard/VCardEntry;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mEntryStack:Ljava/util/List;

    add-int/lit8 v2, v1, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntry;

    .line 124
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/sonymobile/android/vcard/VCardEntry;

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/vcard/VCardEntry;->addChild(Lcom/sonymobile/android/vcard/VCardEntry;)V

    .line 125
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/sonymobile/android/vcard/VCardEntry;

    goto :goto_1
.end method

.method public onEntryStarted()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry;

    iget v1, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mVCardType:I

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/sonymobile/android/vcard/VCardEntry;

    .line 111
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mEntryStack:Ljava/util/List;

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/sonymobile/android/vcard/VCardEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public onPropertyCreated(Lcom/sonymobile/android/vcard/VCardProperty;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/sonymobile/android/vcard/VCardEntry;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/vcard/VCardEntry;->addProperty(Lcom/sonymobile/android/vcard/VCardProperty;)V

    .line 135
    return-void
.end method

.method public onVCardEnded()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 98
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntryHandler;

    .line 99
    invoke-interface {v0}, Lcom/sonymobile/android/vcard/VCardEntryHandler;->onEnd()V

    goto :goto_0
.end method

.method public onVCardStarted()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 91
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntryHandler;

    .line 92
    invoke-interface {v0}, Lcom/sonymobile/android/vcard/VCardEntryHandler;->onStart()V

    goto :goto_0
.end method
