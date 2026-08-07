.class public final LDe/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDe/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lze/k0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:LDe/f;


# direct methods
.method public constructor <init>(LDe/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, LDe/f$b;->b:LDe/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, LDe/f$b;->a:I

    return-void
.end method

.method public synthetic constructor <init>(LDe/f;LDe/f$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LDe/f$b;-><init>(LDe/f;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget v0, p0, LDe/f$b;->a:I

    invoke-static {p1}, Lne/b;->f(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, LDe/f$b;->a:I

    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, LDe/f$b;->a:I

    return v0
.end method
