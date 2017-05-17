.class public interface abstract Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
.super Ljava/lang/Object;
.source "Indexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Landroid/os/Parcelable;


# static fields
.field public static final MODE_HEADER_ON:I = 0x0

.field public static final MODE_NO_INDEX:I = 0x2


# virtual methods
.method public abstract getAllSeparatorTexts()[Ljava/lang/String;
.end method

.method public abstract getCurrentMode()I
.end method

.method public abstract getEntryCount()I
.end method

.method public abstract getIndexBoxText(I)Ljava/lang/String;
.end method

.method public abstract getIndexBoxTextMaxLength()I
.end method

.method public abstract getInitialPosition()I
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getMovePosition(II)I
.end method

.method public abstract getMovePosition(IZ)I
.end method

.method public abstract getSectionIndexes(II[I)I
.end method

.method public abstract getSeparatorCount()I
.end method

.method public abstract getSeparatorText(I)Ljava/lang/String;
.end method
