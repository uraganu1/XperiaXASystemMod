.class public Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;
.super Ljava/lang/Object;
.source "BaseAccountType.java"

# interfaces
.implements Lcom/android/contacts/common/model/account/AccountType$StringInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleInflater"
.end annotation


# instance fields
.field private final mColumnName:Ljava/lang/String;

.field private final mStringRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "stringRes"    # I

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    .line 561
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "stringRes"    # I
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput p1, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mStringRes:I

    .line 571
    iput-object p2, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    .line 569
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 566
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    .line 565
    return-void
.end method


# virtual methods
.method public getColumnNameForTest()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 576
    iget-object v4, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 577
    .local v2, "validColumn":Z
    iget v4, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mStringRes:I

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 579
    .local v3, "validString":Z
    :goto_0
    if-eqz v3, :cond_1

    iget v4, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 580
    :goto_1
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_2
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 583
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 577
    .end local v3    # "validString":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "validString":Z
    goto :goto_0

    .line 579
    :cond_1
    const/4 v1, 0x0

    .local v1, "stringValue":Ljava/lang/CharSequence;
    goto :goto_1

    .line 580
    .end local v1    # "stringValue":Ljava/lang/CharSequence;
    :cond_2
    const/4 v0, 0x0

    .local v0, "columnValue":Ljava/lang/CharSequence;
    goto :goto_2

    .line 584
    .end local v0    # "columnValue":Ljava/lang/CharSequence;
    :cond_3
    if-eqz v3, :cond_4

    .line 585
    return-object v1

    .line 586
    :cond_4
    if-eqz v2, :cond_5

    .line 587
    return-object v0

    .line 589
    :cond_5
    const/4 v4, 0x0

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 596
    const-string/jumbo v1, " mStringRes="

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 596
    iget v1, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mStringRes:I

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 597
    const-string/jumbo v1, " mColumnName"

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
