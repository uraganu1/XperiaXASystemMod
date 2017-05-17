.class Lcom/sonymobile/android/vcard/VCardEntry$IsIgnorableIterator;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsIgnorableIterator"
.end annotation


# instance fields
.field private mEmpty:Z

.field final synthetic this$0:Lcom/sonymobile/android/vcard/VCardEntry;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/vcard/VCardEntry;)V
    .locals 1

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$IsIgnorableIterator;->this$0:Lcom/sonymobile/android/vcard/VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/vcard/VCardEntry;Lcom/sonymobile/android/vcard/VCardEntry$1;)V
    .locals 0

    .prologue
    .line 1623
    invoke-direct {p0, p1}, Lcom/sonymobile/android/vcard/VCardEntry$IsIgnorableIterator;-><init>(Lcom/sonymobile/android/vcard/VCardEntry;)V

    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .prologue
    .line 1654
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    return v0
.end method

.method public onElement(Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1644
    invoke-interface {p1}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1649
    const/4 v0, 0x1

    return v0

    .line 1645
    :cond_0
    iput-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    .line 1647
    return v1
.end method

.method public onElementGroupEnded()V
    .locals 0

    .prologue
    .line 1640
    return-void
.end method

.method public onElementGroupStarted(Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;)V
    .locals 0

    .prologue
    .line 1636
    return-void
.end method

.method public onIterationEnded()V
    .locals 0

    .prologue
    .line 1632
    return-void
.end method

.method public onIterationStarted()V
    .locals 0

    .prologue
    .line 1628
    return-void
.end method
