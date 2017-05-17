.class public final Lcom/android/contacts/common/model/account/AccountType$EditField;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditField"
.end annotation


# instance fields
.field public column:Ljava/lang/String;

.field public editable:Z

.field public inputFilters:[Landroid/text/InputFilter;

.field public inputType:I

.field public longForm:Z

.field public minLines:I

.field public needFocus:Z

.field public optional:Z

.field public shortForm:Z

.field public titleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->needFocus:Z

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->editable:Z

    .line 508
    iput-object p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 509
    iput p2, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    .line 507
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "titleRes"    # I
    .param p3, "inputType"    # I

    .prologue
    .line 513
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;I)V

    .line 514
    iput p3, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    .line 512
    return-void
.end method


# virtual methods
.method public isMultiLine()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 559
    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setEditable(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "editable"    # Z

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->editable:Z

    .line 576
    return-object p0
.end method

.method public setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "longForm"    # Z

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->longForm:Z

    .line 550
    return-object p0
.end method

.method public setMinLines(I)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "minLines"    # I

    .prologue
    .line 554
    iput p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->minLines:I

    .line 555
    return-object p0
.end method

.method public setNeedFocus(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "needFocus"    # Z

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->needFocus:Z

    .line 564
    return-object p0
.end method

.method public setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "optional"    # Z

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->optional:Z

    .line 526
    return-object p0
.end method

.method public setShortForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "shortForm"    # Z

    .prologue
    .line 537
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->shortForm:Z

    .line 538
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 582
    const-string/jumbo v1, " column="

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 583
    const-string/jumbo v1, " titleRes="

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 583
    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 584
    const-string/jumbo v1, " inputType="

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 584
    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 585
    const-string/jumbo v1, " minLines="

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 585
    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->minLines:I

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 586
    const-string/jumbo v1, " optional="

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 586
    iget-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->optional:Z

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 587
    const-string/jumbo v1, " shortForm="

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 587
    iget-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->shortForm:Z

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 588
    const-string/jumbo v1, " longForm="

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 588
    iget-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->longForm:Z

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
