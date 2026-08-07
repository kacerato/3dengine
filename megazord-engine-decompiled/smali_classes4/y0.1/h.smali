.class public final synthetic Ly0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/a$a;


# instance fields
.field public final synthetic a:Lz0/d;


# direct methods
.method public synthetic constructor <init>(Lz0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/h;->a:Lz0/d;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ly0/h;->a:Lz0/d;

    invoke-interface {v0}, Lz0/d;->cleanUp()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
