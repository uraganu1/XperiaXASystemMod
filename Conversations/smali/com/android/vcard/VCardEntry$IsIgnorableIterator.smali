.class Lcom/android/vcard/VCardEntry$IsIgnorableIterator;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElementIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsIgnorableIterator"
.end annotation


# instance fields
.field private mEmpty:Z

.field final synthetic this$0:Lcom/android/vcard/VCardEntry;


# direct methods
.method private constructor <init>(Lcom/android/vcard/VCardEntry;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/vcard/VCardEntry;

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->this$0:Lcom/android/vcard/VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    .line 1641
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$IsIgnorableIterator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/vcard/VCardEntry;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;-><init>(Lcom/android/vcard/VCardEntry;)V

    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .prologue
    .line 1672
    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    return v0
.end method

.method public onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z
    .locals 2
    .param p1, "elem"    # Lcom/android/vcard/VCardEntry$EntryElement;

    .prologue
    const/4 v1, 0x0

    .line 1662
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1663
    iput-boolean v1, p0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    .line 1665
    return v1

    .line 1667
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onElementGroupEnded()V
    .locals 0

    .prologue
    .line 1657
    return-void
.end method

.method public onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V
    .locals 0
    .param p1, "label"    # Lcom/android/vcard/VCardEntry$EntryLabel;

    .prologue
    .line 1653
    return-void
.end method

.method public onIterationEnded()V
    .locals 0

    .prologue
    .line 1649
    return-void
.end method

.method public onIterationStarted()V
    .locals 0

    .prologue
    .line 1645
    return-void
.end method
