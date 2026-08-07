.class public Lki/p$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lki/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lpi/t;

.field public final b:I


# direct methods
.method public constructor <init>(Lpi/t;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lki/p$c;->a:Lpi/t;

    iput p2, p0, Lki/p$c;->b:I

    return-void
.end method
