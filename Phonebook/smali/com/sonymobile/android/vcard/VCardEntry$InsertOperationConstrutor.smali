.class Lcom/sonymobile/android/vcard/VCardEntry$InsertOperationConstrutor;
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
    name = "InsertOperationConstrutor"
.end annotation


# instance fields
.field private final mBackReferenceIndex:I

.field private final mOperationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/android/vcard/VCardEntry;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/vcard/VCardEntry;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1707
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$InsertOperationConstrutor;->this$0:Lcom/sonymobile/android/vcard/VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1708
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardEntry$InsertOperationConstrutor;->mOperationList:Ljava/util/List;

    .line 1709
    iput p3, p0, Lcom/sonymobile/android/vcard/VCardEntry$InsertOperationConstrutor;->mBackReferenceIndex:I

    .line 1710
    return-void
.end method


# virtual methods
.method public onElement(Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;)Z
    .locals 2

    .prologue
    .line 1730
    invoke-interface {p1}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1733
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$InsertOperationConstrutor;->mOperationList:Ljava/util/List;

    iget v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$InsertOperationConstrutor;->mBackReferenceIndex:I

    invoke-interface {p1, v0, v1}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;->constructInsertOperation(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public onElementGroupEnded()V
    .locals 0

    .prologue
    .line 1726
    return-void
.end method

.method public onElementGroupStarted(Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;)V
    .locals 0

    .prologue
    .line 1722
    return-void
.end method

.method public onIterationEnded()V
    .locals 0

    .prologue
    .line 1718
    return-void
.end method

.method public onIterationStarted()V
    .locals 0

    .prologue
    .line 1714
    return-void
.end method
