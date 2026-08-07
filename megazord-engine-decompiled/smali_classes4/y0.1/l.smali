.class public final synthetic Ly0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/a$a;


# instance fields
.field public final synthetic a:Lz0/c;


# direct methods
.method public synthetic constructor <init>(Lz0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/l;->a:Lz0/c;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ly0/l;->a:Lz0/c;

    invoke-interface {v0}, Lz0/c;->e()Lu0/a;

    move-result-object v0

    return-object v0
.end method
