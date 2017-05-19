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

.field public inputType:I

.field public longForm:Z

.field public minLines:I

.field public optional:Z

.field public shortForm:Z

.field public titleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 469
    iput p2, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    .line 467
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "titleRes"    # I
    .param p3, "inputType"    # I

    .prologue
    .line 473
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;I)V

    .line 474
    iput p3, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    .line 472
    return-void
.end method


# virtual methods
.method public setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "longForm"    # Z

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->longForm:Z

    .line 489
    return-object p0
.end method

.method public setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "optional"    # Z

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->optional:Z

    .line 479
    return-object p0
.end method

.method public setShortForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "shortForm"    # Z

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->shortForm:Z

    .line 484
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
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

    .line 505
    const-string/jumbo v1, " column="

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 506
    const-string/jumbo v1, " titleRes="

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 506
    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    const-string/jumbo v1, " inputType="

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 508
    const-string/jumbo v1, " minLines="

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 508
    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->minLines:I

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 509
    const-string/jumbo v1, " optional="

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 509
    iget-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->optional:Z

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    const-string/jumbo v1, " shortForm="

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    iget-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->shortForm:Z

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 511
    const-string/jumbo v1, " longForm="

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 511
    iget-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->longForm:Z

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
