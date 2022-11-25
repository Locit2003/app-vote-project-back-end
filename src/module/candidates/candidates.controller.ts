import { Controller, Get, Post, Body, Patch, Param, Delete, ValidationPipe, UsePipes, Request, Query } from '@nestjs/common';
import { CandidatesService } from './candidates.service';
import { CreateCandidateDto } from './dto/create-candidate.dto';
import { UpdateCandidateDto } from './dto/update-candidate.dto';

@Controller('candidates')
export class CandidatesController {
  constructor(
    private readonly candidatesService: CandidatesService,
  ) {}

  @Post()
  @UsePipes(ValidationPipe)
  create(@Body() createCandidateDto: CreateCandidateDto) {
    return this.candidatesService.create(createCandidateDto);
  }
  
  @Get('paged')
  findAll(@Query() {take,skip}){
    return this.candidatesService.showAll(take,skip)
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.candidatesService.findOne(+id);
  }

  @Patch(':id')
  @UsePipes(ValidationPipe)
  update(@Param('id') id: string, @Body() updateCandidateDto: UpdateCandidateDto) {
    return this.candidatesService.update(+id, updateCandidateDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.candidatesService.remove(+id);
  }

  @Patch('voted/:id')
  update_Vote(@Param('id') id: number){
  //  return this.candidatesService.voting(id)
  }
} 
