.class public interface abstract Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;
.super Ljava/lang/Object;
.source "PickMode.java"


# static fields
.field public static final EXTRA_NUMBERS_FOR_FILTERING:Ljava/lang/String; = "extraNumbersForFiltering"

.field public static final EXTRA_SKIP_FAVORITES:Ljava/lang/String; = "extraSkipFavorites"


# virtual methods
.method public abstract canCreateContact()Z
.end method

.method public abstract canEditContact()Z
.end method

.method public abstract createNewRecipientItem(Landroid/net/Uri;Landroid/database/Cursor;Landroid/content/res/Resources;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
.end method

.method public abstract getActivityTitle()I
.end method

.method public abstract getColumnNameForFilteringByPredicate()Ljava/lang/String;
.end method

.method public abstract getFilterUri(J)Landroid/net/Uri;
.end method

.method public abstract getGroupAccountDataset()Ljava/lang/String;
.end method

.method public abstract getGroupAccountName()Ljava/lang/String;
.end method

.method public abstract getGroupAccountType()Ljava/lang/String;
.end method

.method public abstract getGroupMembers()[J
.end method

.method public abstract getMaxRecipient()I
.end method

.method public abstract getPredicateForFiltering()Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProjection(Z)[Ljava/lang/String;
.end method

.method public abstract getQueryHintResourceId()I
.end method

.method public abstract getQueryUri(J)Landroid/net/Uri;
.end method

.method public abstract getSelection(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getShortcutAction()Ljava/lang/String;
.end method

.method public abstract getTitleResourceId()I
.end method

.method public abstract getUriFromPosition(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;IJ)Landroid/net/Uri;
.end method

.method public abstract hasProfile()Z
.end method

.method public abstract isDisableQuickContact()Z
.end method

.method public abstract isDisableSectionHeader()Z
.end method

.method public abstract isFavorite()Z
.end method

.method public abstract isMultiChoice()Z
.end method

.method public abstract isNoData()Z
.end method

.method public abstract isNoFilter()Z
.end method

.method public abstract isPickContact()Z
.end method

.method public abstract isShowPhotos()Z
.end method

.method public abstract isSimContactInvisible()Z
.end method

.method public abstract isSpecificGroup()Z
.end method

.method public abstract isSupportGalSearch()Z
.end method

.method public abstract isValidSearchString(Ljava/lang/String;)Z
.end method

.method public abstract setFavorite(Z)V
.end method

.method public abstract shouldFilterOutByPredicate()Z
.end method

.method public abstract shouldFilterOutProvidedNumbers()Z
.end method

.method public abstract shouldReturnDataResult()Z
.end method
