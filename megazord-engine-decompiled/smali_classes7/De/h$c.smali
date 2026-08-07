.class public LDe/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze/S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDe/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final b:[Ljava/lang/Object;

.field public final c:Lze/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lze/k0<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public final synthetic d:LDe/h;


# direct methods
.method public constructor <init>(LDe/h;[Ljava/lang/Object;Lze/k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lze/k0<",
            "-TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, LDe/h$c;->d:LDe/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, LDe/h$c;->a:Z

    iput-object p2, p0, LDe/h$c;->b:[Ljava/lang/Object;

    iput-object p3, p0, LDe/h$c;->c:Lze/k0;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    iget-object v0, p0, LDe/h$c;->c:Lze/k0;

    iget-object v1, p0, LDe/h$c;->b:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lze/k0;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
